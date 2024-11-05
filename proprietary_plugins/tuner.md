---
title: "Custom Settings"
description: "Advanced settings for your DefectDojo instance."
draft: false
weight: 2
---


## Custom Settings

Custom Settings adds additional settings to your DefectDojo instance, including fine tuning deduplication, SAML settings, SSO configuration and SMTP server configuration.

_Note:_ SMTP server configuration is only available for on-premise customers.

To access these additional settings, navigate to the appropriate _Settings_ page under the _Plugin Manager_ tab within the sidebar. Please note, the name of this tab will depend on your DefectDojo level (e.g. _Plus_, _Pro_, or _Enterprise_).

![Accessing Tuner Settings](../../../images/tuner/nav-ts.png)


## Deduplication Settings

Deduplication settings provide the option to select a specific deduplication algorithm, as well as the fields which will be considered when deduplication is performed.

Before configuring custom deduplication settings for a specific tool, said tool must have previously been used and recognized by DefectDojo. In addition, a deduplication algorithm (a detailed list can be found [here](https://documentation.defectdojo.com/usage/features/#deduplication-algorithms)) and desired fields for identifying duplicates must be selected. 

Once proper choices have been made, deduplication settings may be saved via the _Submit_ button.

_Note:_ Once these settings are saved, the hashcode for each finding will be re-calculated asynchronously, and a server reset will be forced.

![Deduplication Settings](../../../images/tuner/ts-dedup.png)


## SAML Settings

The SAML settings provide custom SAML configuration for a given DefectDojo instance. The following is a description of each available SAML configuration field:

__Entity ID__ (_required_) - a string that identifies DefectDojo to the SAML IdP

__Login Button Text__ - the text displayed on the SAML login button when displayed on the DefectDojo login page

__Logout URL__ - the logout URL that closes a given SAML session

__Required Attributes__ - only accounts with these defined attributes will be authorized successfully

__Attribute Mapping__ (_required_) - the mapping from SAML attributes to DefectDojo fields

__Remote SAML Metadata__ - the SAML metadata that is retrievable via HTTP by the IdP

__Local SAML Metadata__ - the SAML metadata that generated by the IdP in XML format and stored locally (_Note:_ After this file is submitted, there will be no indicator of it being uploaded.)

__Create Unknown User__ - when enabled, users that successfully authorize via SAML that do not already exist within DefectDojo will have a new user account provisioned

__Allow Unknown Attributes__ - when enabled, users that have attributes not configured in the attribute mappings can still successfully authorize to DefectDojo

__Sign Assertions__ - when disabled, DefectDojo will not consume any SAML assertions that are not signed

__Sign Responses__ - when disabled, DefectDojo will not consume any SAML responses that are not signed

__Sign Logout Requests__ - when enabled, logout requests will need to be signed by DefectDojo

__Force Authentication__ - when enabled, DefectDojo will force user login without relying on sessions

__Enable SAML debugging__ - when enabled, more verbose output will be present in the logs for debugging issues

__Enable SAML__ - when enabled, the button to login via SAML will be present on the login page (_Note:_ If the _Enable SAML_ field is not checked, no SAML login button will be displayed on the DefectDojo login page.)


Once the above fields have been appropriately populated, the SAML settings can be saved via the _Submit_ button.

_Note:_ Once these settings are saved, a server reset will be forced.

![SAML Settings](../../../images/tuner/ts-saml.png)

## SSO Settings

DefectDojo provides numerous offerings for SSO through Pro custom settings, including _Auth0_, _Azure AD_, _GitHub Enterprise_, _GitLab_, _Google_, _KeyCloak_, and _Okta_. To configure a specific SSO offering, select it from the dropdown for configuration.

![SSO Options](../../../images/tuner/ts-sso-options.png)

For example, if _Auth0_ configuration was desired, once selected from the dropdown, the following fields would need to be populated:

__Auth0 OAuth Key__ - the key associated with your Auth0 OAuth instance

__Auth0 OAuth Secret__ - the secret associated with your Auth0 OAuth instance

__Auth0 Domain__ - the domain of your Auth0 OAuth instance

__Enable Auth0 OAuth__ - when enabled, the button to login via Auth0 will be present on the login page

 
While this example only covers _Google_ configuration settings, each of the offerings for SSO requires similar data entries. Once the above fields have been appropriately filled in, the SSO settings for a given offering can be saved via the _Submit_ button.

![Specific SSO Options](../../../images/tuner/ts-sso-google.png)

## Login Settings

DefectDojo offers some flexibility in how the user can login as well as opportunities for recovering access if it is lost: 

__Session Age__ - Dictates how long a given session will be valid for DefectDojo. The default is set to 12 hours. When modified, the expiration for all existing sessions will be updated, and possibly expire

__Show Username and Password__ -  when enabled, the username and password fields remain present on the login page and can be used for login

__Allow Login with Username and Password__ - when enabled, the login button by username and password is present

__Allow Forgot Password__ - when enabled, users can start the process of resetting their passwords from the login page

__Create User on Successful Login__ - when enabled, users authorized by SSO that do not already exist in DefectDojo can be created with minimal permissions

__Auto Redirect to SSO Page__ - when enabled, visiting DefectDojo will automatically redirect to the SSO login page (_Note:_ This only works with one SSO connection configured)


![Login Settings](../../../images/tuner/ts-login-settings.png)

These settings may be saved via the _Submit_ button.

## SMTP Server Settings

SMTP Server Settings provides the ability to configure an SMTP server for a given DefectDojo instance. To properly configure SMTP server settings, the following fields must be populated (_Note:_ This functionality is only offered to customers who have purchased an on-premise DefectDojo license):

__Host__ - the host of the SMTP server

__User__ - the user to connect to the SMTP server as

__Password__ - the password of the user connecting to the SMTP server

__Port__ - the port the SMTP server is listening on


![SMTP Server Settings](../../../images/tuner/ts-smtp.png)

Once filled in, these settings may be saved via the _Submit_ button.

## Multi-Factor Authentication (MFA) Settings

MFA settings adds the ability to use multi-factor authentication with a DefectDojo users account. To enable MFA, select _Personal Settings_ from the dropdown menu under the MFA tab within custom settings. By default, MFA is disabled. To learn more about MFA, expand the dropdown titled _What is multi-factor authentication?_

To begin the MFA configuration process, select the button titled _Configure Multi-Factor Authentication_.

![MFA Disabled](../../../images/tuner/ts-mfa-off.png)

Once the configuration has been started, a prompt to download a mobile authentication application will appear. Once the application is downloaded on your mobile device, proceed to the next step to obtain the QR code needed to continue MFA configuration via the _Generate QR Code_ button.

![MFA Application](../../../images/tuner/ts-mfa-app.png)

Using the camera on your mobile device, scan the QR code displayed on the screen. Once scanned, a six-digit code should be produced that is to be entered in the box below the QR code. Once this code is entered, enable MFA using the _Enable Multi-Factor Authentication_ button.

![MFA QR Code](../../../images/tuner/ts-mfa-qr.png)

If the code was entered was correctly in the previous step, MFA is now enabled on your account, and you will be presented with a list of recovery codes. These should be stored in a safe place and used (in place of the normal six-digit code) if access to your mobile authenticator application has been lost.

![MFA Recovery Codes](../../../images/tuner/ts-mfa-recovery.png)

To check the status of MFA on your account at any time, navigate back to the _MFA_ tab within _Custom Settings_. This page will show either _Enabled_ or _Disabled_, depending on the status.

![MFA Enabled](../../../images/tuner/ts-mfa-on.png)

If at any time you wish to disable MFA on your account, select the _Disable MFA_ button from the _MFA_ tab within _Custom Settings_. This will ask you to confirm you wish to disable multi-factor authentication. Use the _Disable Multi-Factor Authentication_ to confirm this action. To enable MFA again in the future, repeat the steps listed above.

![MFA Confirm Disable](../../../images/tuner/ts-mfa-disable.png)

When MFA is enabled, during the login process (after entering your username and password), a new step will be presented, asking for the six-digit code displayed on the mobile authenticator application you selected during setup. To login successfully, enter the six-digit code displayed on your mobile authentication application and select _Submit_ to login.

![MFA Login](../../../images/tuner/ts-mfa-login.png)

### MFA User Audit

To view whether users have enabled MFA or not, navigate to the Users page and find the information ont he right side of the page:

![MFA Users](../../../images/tuner/ts-mfa-users.png)

### Require MFA For All Users

Users with a global maintainer or owner role can enable MFA globally for all users within DefectDojo. For new and existing users, the MFA configuration page will be a blocker within DefectDojo until MFA is fully enabled on the users account. To enable global MFA, select _System Settings_ from the dropdown menu under the MFA tab within custom settings. Select the _Enable Global MFA_ checkbox, and click submit. 

![MFA Global Requirement](../../../images/tuner/ts-mfa-global-require.png)


For additional information, please see our [pricing page](https://www.defectdojo.com/pricing).