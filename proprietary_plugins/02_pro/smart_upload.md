---
title: "Smart Upload"
description: "A smarter way to import scans to DefectDojo."
draft: false
weight: 2
---

## Smart Upload

Smart upload is an enhanced version of the existing import scan functionality within DefectDojo. Smart upload works by automatically assigning findings to existing products within DefectDojo, using previously affected endpoints that have already been imported as a way to make a match.

If no existing engagement is found under a given product such that an appropriate match can be made, a new engagement will be created. If any of the newly imported findings do not find an endpoint that match any existing products, the findings are given a unique type of _Unassigned Findings_. The user can then assign these _Unassigned Findings_ to an existing product, create a new product where they should be stored, or simply delete the newly imported finding altogether. 

## Using Smart Upload

Begin by navigating to the _Smart Upload_ page under the plugins tab within the sidebar.

![Accessing Smart Upload](../../../images/smart_upload/nav-su.png)

To begin uploading, select _Smart Upload_ in the top right.

![Start Smart Upload](../../../images/smart_upload/su-upload.png)

This will prompt the user to fill out information pertaining to the scan file(s) being uploaded, similar to the way importing is completed in other parts of DefectDojo. Once all data in the form is completed, submit the form.

![Import Findings](../../../images/smart_upload/su-import.png)

Once the upload is complete, all findings that were not assigned to an existing product will be displayed for manual placement. After selecting a finding, three options will be displayed:

- _Create Product_ - create a new product for the finding to be assigned to
- _Assign Product_ - list all existing products that the finding may be assigned to
- _Disregard Findings_ - delete the unassigned finding altogether

![Product Placement](../../../images/smart_upload/su-placement.png)

![Manually Assign Finding](../../../images/smart_upload/su-assign.png)

## API

Smart uploading via the API is performed via the [smart_upload_import](https://demo.defectdojo.org/api/v2/doc/) endpoint. More information on using the DefectDojo API can be found [here](https://documentation.defectdojo.com/integrations/api-v2-docs/). 

For additional information, please see our [pricing page](https://www.defectdojo.com/pricing).