---
title: "Smart Upload"
description: "A smarter, more efficient way to import infrastructure scans to DefectDojo."
draft: false
weight: 2
---

## Smart Upload

Smart upload is a specialized importer that ingests reports from [infrastructure scanning tools](#supported-tools). The intelligence in this import vehicle comes from the ability to [match incoming findings with existing products based on the hosts of endpoints](#how-are-findings-matched) discovered during the scan. Findings that are not matched with an existing product will be converted to an "Unassigned Finding" object that is separate from other findings and place in a [product placement](#product-placement) queue. This separation is vital for ensuring that these unassigned findings do not have an impact on metrics and reports. 

### Using Smart Upload

#### UI Form

Begin by navigating to the _Smart Upload_ page under the plugins tab within the sidebar.

![Accessing Smart Upload](../../../images/smart_upload/nav-su.png)

To begin uploading, select _Smart Upload_ in the top right.

![Start Smart Upload](../../../images/smart_upload/su-upload.png)

This will prompt the user to fill out information pertaining to the scan file(s) being uploaded, similar to the way importing is completed in other parts of DefectDojo. Once all data in the form is completed, submit the form.

#### API Endpoint

THe smart upload API endpoint is very similar to other import endpoints available in Defectdojo. The difference here is that only a few fields are required:

```
curl -X 'POST' \
  'https://dojo-host/api/v2/smart_upload_import/' \
  -H 'accept: application/json' \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Token XXX' \
  -F 'files=@n/path/to/file;type=text/csv' \
  -F 'scan_type=Tenable Scan'
```

### How are findings matched?

Findings are matched with existing products based on the host or IP of the endpoint the finding was discovered at. Take the following example of an existing product list:

<!-- Screenshot of ../../../images/smart_upload/su-existing-products-before-import.puml -->
![PUML Existing Products](../../../images/smart_upload/su-existing-products-before-import.png)

After importing a scan report with a couple findings, the system will be as follows before progressing to the product matching algorithm

<!-- Screenshot of ../../../images/smart_upload/su-unsaved-findings.puml -->
![PUML Unsaved Findings](../../../images/smart_upload/su-unsaved-findings.png)

Once the product matching is ran, the state of the system will be as follows:

<!-- Screenshot of ../../../images/smart_upload/su-products-matched.puml -->
![PUML Products Matched](../../../images/smart_upload/su-products-matched.png)

#### What happens when a matching product is not found?

If a findings endpoints do not match any existing endpoints within the system, then the finding will be split into N findings, where N is the number of unique hosts where this finding was discovered:

<!-- Screenshot of ../../../images/smart_upload/su-split-findings.puml -->
![PUML Split Findings](../../../images/smart_upload/su-split-findings.png)

#### What happens if multiple matches are found?

Multiple endpoint to product matches is the primary purpose of smart upload! In the diagram above, a finding with multiple hosts/IPs will be split into identical findings and assigned to their respective products. If there are any endpoint hosts without a matching product, then they will also be split into separate findings by host.

#### How is the data organized in a given product?

Engagements and Tests created under a product are intended to be CI/CD focused. In most cases, the engagement will be reused. However, supplying updated arguments to the importer such as version, build ID, commit hash, or branch tag will be used to filter for a specific engagement based on those values. 

![Engagements and Tests](../../../images/smart_upload/su-test-engagements.png)

### Product Placement

Findings parsed from a given report that are not matched to an existing product will be placed in a "product placement" queue where each finding can be assessed by there title, severity, endpoints where the vulnerability was detected, and what file the finding came from.

![Product Placement](../../../images/smart_upload/su-placement.png)

After selecting at least one finding, three options will be displayed:

- _Create Product_ - create a new product for the finding to be assigned to
- _Assign Product_ - list all existing products that the finding may be assigned to
- _Discarded Findings_ - delete the unassigned finding altogether

#### Create Product

Sometimes, a finding is detected on an endpoint that may not fully align with any existing products, or may not even fit product model directly. In these cases, it is most appropriate to create a new product for these findings to avoid having them getting misplaced in the future. After clicking the "Create Product" button, a short form will appear to gather some required information about the product:

![Create Product](../../../images/smart_upload/su-create.png)

More information can be added to this newly created product from the "Edit Product" page

#### Assign Product

In most cases with infrastructure scans, the endpoints where findings are discovered are often dynamic. When the location of a finding changes, it is necessary to create this link from this new location to an existing product so that a match can be found in the next import. After clicking the "Assign Product" button, a short form will appear to select the product this finding should be assigned to:

![Assign Product](../../../images/smart_upload/su-assign.png)

#### Discarded Findings

When a finding is deemed to be not worth keeping, then it can be discarded from the product placement queue altogether by click ing the "Discard Findings" button

#### Supported Tools

- Nexpose
- NMap
- OpenVas
- Qualys
- Tenable
