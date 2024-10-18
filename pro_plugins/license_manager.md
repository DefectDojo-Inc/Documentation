---
title: "License Manager"
description: "Keep track of your DefectDojo commercial edition license."
draft: false
weight: 2
---

## License Manager

The license manager within DefectDojo houses all license information for a given instance. License manager also serves as an alert system, notifying users of important information regarding the status of their license.

To view the current license information of a given instance, navigate to the _View License_ page under the plugins tab within the sidebar.

![Accessing View License](../../../images/license_manager/nav-lm.png)

## Viewing License Information

Within the _View License_ page, you will find all the necessary information regarding a given license.

![View License Details](../../../images/license_manager/lm-view-license.png)

If the default _Next Reminder_ date is not preferable, the next reminder date can be set manually.

## License Manager Notifications

Reminders related to the expiration of your license will begin 60 days before final day the license is valid. When 7 days remain before license expiration, reminders will trigger daily. 

![License Status Notification](../../../images/license_manager/lm-popup.png)

When prompted with a notification regarding a given license, two options are presented. If _Contact_ is selected, you will be prompted to send an E-mail to DefectDojo support. If _Remind Later_ is selected, the reminder will be snoozed for one day.

## Invalid Licenses

If at any point the license becomes invalid during its duration, all DefectDojo Pro features will be blocked from use until the issue is resolved.

A license can become invalid for many reasons, including (but not limited to):

- The signature of the license cannot be read by the license manager (e.g. tampering occurred)
- The license has expired
- The license has cannot be found by the license manager (e.g. the license has been moved or deleted) 
- The amount of storage used has exceeded the purchased amount (specific to SaaS subscription instances of DefectDojo)

## API

License information is accessible through the API via the [license](https://demo.defectdojo.org/api/v2/doc/) endpoint. More information on using the DefectDojo API can be found [here](https://documentation.defectdojo.com/integrations/api-v2-docs/). 

For additional information, please see our [pricing page](https://www.defectdojo.com/pricing).