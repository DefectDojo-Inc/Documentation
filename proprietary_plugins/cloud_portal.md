---
title: "Cloud Manager"
description: "Modify your cloud settings from within your DefectDojo instance."
draft: false
weight: 2
---


## Cloud Manager

Cloud Manager removes the need to use the DefectDojo [cloud site](https://www.cloud.defectdojo.com) to update firewall rules, preferred maintenance schedule, and submit support inquiries. In addition, the Cloud Manager provides messaging capabilities for SaaS management to communicate with subscription holders.

_Note:_ Cloud Manager is only available to DefectDojo cloud subscribers. The DefectDojo [cloud site](https://www.cloud.defectdojo.com) is also still required for updating or modifying billing information.

## Message Portal

The Message Portal acts as a secondary method of communication, outside of email, for cloud management to communicate with cloud subscription holders. Important information such as cancellation dates, bug reports, and trial expiration dates are all examples of data that may be shared with subscription holders by the messenger.

__Message Notifications__

New messages are collected automatically by DefectDojo. When new messages are received, they will be displayed as popups. After reviewing the contents of the popup, the message can be closed by selecting _Acknowledge_.

![Message Notification](../proprietary_images/cloud_manager/cm-mp-popup.png)

__Message Portal__

All previously received notifications will be stored and accessible within the message portal. To access previously received messages, navigate to the _Message Portal_ page under the _Cloud Manager_ tab within the sidebar.

![Accessing Message Portal](../proprietary_images/cloud_manager/nav-cm-mp.png)

Within the message portal, all previously received messages will be listed. As with other objects in DefectDojo, messages can be filtered to find a specific message faster. Although messages are collected automatically, if a user wishes to check for new messages manually, the _Refresh_ button will pull any new messages that may exist.

![Message Portal](../proprietary_images/cloud_manager/cm-mp.png)

To view a specific message in full, select the eyeball under the actions column for a specific message. After being redirected, all of the details regarding a specific message will be displayed.

![Message View Action](../proprietary_images/cloud_manager/cm-mp-view.png)

## Firewall Rules

Firewall rules restrict whch IP addresses are able to access a given DefectDojo instance. To update or modify existing firewall rules that may have been added in the cloud portal, navigate to the _Firewall Rules_ page under the _Cloud Manager_ tab within the sidebar.

![Accessing Firewall Rules](../proprietary_images/cloud_manager/nav-cm-fr.png)

To add a new firewall rule, select the _Add New Rule_ button under the existing rules. This will prompt for a new IP address, mask, and label.

To remove a firewall rule, use the _Remove_ button to the right of the rule details.

![Adding Firewall Rules](../proprietary_images/cloud_manager/cm-fr-add.png)

In addition to custom firewall rules, DefectDojo offers bulk whitelisting of IP addresses used by GitHub and Jira. If these services communicate with your DefectDojo instance, it may be required for these external services to be enabled.

To enable or disable a specific external service, use the checkbox to the right of the service's label (i.e. when checked the service is enabled, when unchecked the service is disabled).

To save any changes that have been made to new or exsting firewall rules, use the _Submit_ button. Please note, firewall rule propgation is not instant, and may take a few minutes for the update to take effect.

## Maintenance Schedule

Occasionally, DefectDojo cloud subscriptions may need to experience downtime for bugfixes and upgrades. The maintenance schedule allows cloud subscription maintainers to perform neccessary changes to your DefectDojo subscription without interrupting your workflow.

![Accessing Maintenance Schedule](../proprietary_images/cloud_manager/nav-cm-ms.png)

To update preferred maintenance times, navigate to the _Maintenance Schedule_ page under the _Cloud Manager_ tab within the sidebar.

![Adding Maintenance Schedule Times](../proprietary_images/cloud_manager/cm-ms-view.png)

__Monthly__

The monthly maintenance schedule times are proposed times for major updates to take place. Major updates include activities such as TLS certification renewals, DefectDojo version upgrades, and patches.

![Monthly Maintenance Schedule](../proprietary_images/cloud_manager/cm-ms-monthly.png)

__Daily__

The daily maintenance schedule times are proposed times for minor updates to take place. Minor updates include activities such as emergency bug fixes and/or patches, or general server maintenance.

![Monthly Maintenance Schedule](../proprietary_images/cloud_manager/cm-ms-daily.png)

To save any changes made to preferred maintenance schedule times, use the _Submit_ button.

_Note:_ All times entered to the maintenance schedule forms are to be entered in Central Standard Time (CST).

## Contact Support

The contact support page allows for a direct line of communication to the cloud management team from within DefectDojo. This is the fastest method of communication between DefectDojo customers and DefectDojo cloud maintainers.

![Accessing Contact Support](../proprietary_images/cloud_manager/nav-cm-cs.png)

To submit a new support inquiry, navigate to the _Contact Support_ page under the _Cloud Manager_ tab within the sidebar.

![Contact Support Form](../proprietary_images/cloud_manager/cm-cs-view.png)

The following fields are required when submitting a new support inquiry:

__Subject__ - the subject field should contain the reason for contact. It is the first thing a cloud maintainer will see when receiving a support inquiry.

__Body__ - a detailed, but brief, description of the problem or question. (_Note:_ Refrain from including any sensitive information within the subject or body of a support inquiry.)

__Problem Type__ - the type of problem or question being submitted. There are multiple options to choose from when submitting a new support inquiry (listed and explained by example below). Select whichever one best matches the request.

- _General Question_ - e.g. unsure of how to create a new product in DefectDojo
- _Report a problem with DefectDojo SaaS_ - e.g. unable to edit subscription
- _Report a problem with DefectDojo_ - e.g. server 500 error on a given url
- _Report a problem with a subscription_ - e.g. unable to access DefectDojo cloud instance
- _Pricing inquiry_ - e.g. questions about custom term agreements
- _Billing inquiry_ - e.g. questions about changing billing information
- _Other_ - e.g. looking to upgrade from DefectDojo Plus to DefectDojo Pro

![Support Inquiry Problem Types](../proprietary_images/cloud_manager/cm-cs-problems.png)

Once the above fields have been filled out appropriately, send your support inquiry by using the _Submit_ button.

For additional information, please see our [pricing page](https://www.defectdojo.com/pricing).