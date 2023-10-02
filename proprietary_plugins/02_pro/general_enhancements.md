---
title: "General Enhancements"
description: "Further enahncements to "
draft: false
weight: 2
---

# Groups

### Email Address

Groups allow for an email address that is intended to hold an email distribution address. This distribution address
could include all of the members of the group, just a few of the members, or maybe even some folks that do not have
access to DefectDojo at all.

![Group Email](../../../images/general_enhancements/group_email.png)

# Finding

### Owners

Findings can now have owners in the form of the groups! Only groups that have access to the product type or product
of a given finding can be designated as the owner of that finding. 

![Finding Owners](../../../images/general_enhancements/finding_owners.png)

#### Filtering

Findings can be filtered by their respective owners to allow personalized lists of findings. This allows for each
member of a group to see and easily manage only the findings they are responsible for actioning. Acceptable filters
on any finding list page are as follows:

- **owners**: The ID of the group to filter the findings by
  - Example: https://dojo-url.com/product/2/finding/all?owners=1
- **owners_email**: The exact match of the email address associated with the group
  - Example: https://dojo-url.com/product/2/finding/all?owners_email=docs@defectdojo.com
- **owners_email_contains**: Any partial match of the email address associated with the group
  - Example: https://dojo-url.com/product/2/finding/all?owners_email_contains=docs

# Notifications

### Owners Digests

Owners Digests is a scheduled notification that alerts finding owners of the findings that they are responsible for. 
To enable this type of notification, email base notifications must first be enabeled in the System Settings menu.

![Owners Digest](../../../images/general_enhancements/notifications_owners_digest.png)

#### Cadence

Notifications are sent out at 9:00 AM within the timezone that is set within your DefectDojo server. Frequency
of the these notifications can be set according to the following:
- Daily
- Weekly - Monday
- Weekly - Tuesday
- Weekly - Wednesday
- Weekly - Thursday
- Weekly - Friday
- Weekly - Saturday
- Weekly - Sunday
- Monthly - 1st of the month
- Monthly - 15th of the month

#### Email Contents

The content of the email message is as follows:

> Hello <User Group Name>,
> 
> Please review the current vulnerabilities for which you are assigned here.
> 
> As a reminder, it is company policy to remediate these issues in accordance with our vulnerability SLA’s which are displayed in the above link.

Where "here" is a URL to filter the list of all findings to those owned by the given group.

#### Scopes

Notifications come in three scopes:

- System
  - Owners Digests under the system scope will iterate through each group with a registed email address and send the
    the digest on the defined cadence
- Personal
  - Owners Digests under the personal scope will iterate through each group that the user is a memebr of, and then
    send a group digest to the inividual user. This action will only be successful if the user has an email address
    registered under their user account
- Template
  - Owners Digests set on the template will ensure that any new user will have the Owners Digest enabled under their
    own personal notification scope
