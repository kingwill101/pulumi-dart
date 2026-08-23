// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2 {
  /// The list of allowed Applications for the Default Authorisation Policy.
  final pulumi.Input<List<String>>? allowedApplications;
  /// Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  ///
  /// &gt; **Note:** This is configured on the Authentication Provider side and is Read Only here.
  final pulumi.Input<List<String>>? allowedAudiences;
  /// The list of allowed Group Names for the Default Authorisation Policy.
  final pulumi.Input<List<String>>? allowedGroups;
  /// The list of allowed Identities for the Default Authorisation Policy.
  final pulumi.Input<List<String>>? allowedIdentities;
  /// The ID of the Client to use to authenticate with Azure Active Directory.
  final pulumi.Input<String> clientId;
  /// The thumbprint of the certificate used for signing purposes.
  ///
  /// &gt; **Note:** If one `clientSecretSettingName` or `clientSecretCertificateThumbprint` is specified, terraform won't write the client secret or secret certificate thumbprint back to `appSetting`, so make sure they are existed in `appSettings` to function correctly.
  final pulumi.Input<String>? clientSecretCertificateThumbprint;
  /// The App Setting name that contains the client secret of the Client.
  ///
  /// &gt; **Note:** A setting with this name must exist in `appSettings` to function correctly.
  final pulumi.Input<String>? clientSecretSettingName;
  /// A list of Allowed Client Applications in the JWT Claim.
  final pulumi.Input<List<String>>? jwtAllowedClientApplications;
  /// A list of Allowed Groups in the JWT Claim.
  final pulumi.Input<List<String>>? jwtAllowedGroups;
  /// A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
  final pulumi.Input<Map<String, String>>? loginParameters;
  /// The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  ///
  /// &gt; **Note:** [Here](https://learn.microsoft.com/en-us/entra/identity-platform/authentication-national-cloud#microsoft-entra-authentication-endpoints) is a list of possible authentication endpoints based on the cloud environment. [Here](https://learn.microsoft.com/en-us/azure/app-service/configure-authentication-provider-aad?tabs=workforce-tenant) is more information to better understand how to configure authentication for Azure App Service or Azure Functions.
  final pulumi.Input<String> tenantAuthEndpoint;
  /// Should the www-authenticate provider should be omitted from the request? Defaults to `false`.
  final pulumi.Input<bool>? wwwAuthenticationDisabled;

  /// Creates a new [LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2].
  /// [allowedApplications] The list of allowed Applications for the Default Authorisation Policy.
  /// [allowedAudiences] Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [allowedGroups] The list of allowed Group Names for the Default Authorisation Policy.
  /// [allowedIdentities] The list of allowed Identities for the Default Authorisation Policy.
  /// [clientId] The ID of the Client to use to authenticate with Azure Active Directory.
  /// [clientSecretCertificateThumbprint] The thumbprint of the certificate used for signing purposes.
  /// [clientSecretSettingName] The App Setting name that contains the client secret of the Client.
  /// [jwtAllowedClientApplications] A list of Allowed Client Applications in the JWT Claim.
  /// [jwtAllowedGroups] A list of Allowed Groups in the JWT Claim.
  /// [loginParameters] A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
  /// [tenantAuthEndpoint] The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  /// [wwwAuthenticationDisabled] Should the www-authenticate provider should be omitted from the request? Defaults to `false`.
  const LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2({
    this.allowedApplications,
    this.allowedAudiences,
    this.allowedGroups,
    this.allowedIdentities,
    required this.clientId,
    this.clientSecretCertificateThumbprint,
    this.clientSecretSettingName,
    this.jwtAllowedClientApplications,
    this.jwtAllowedGroups,
    this.loginParameters,
    required this.tenantAuthEndpoint,
    this.wwwAuthenticationDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications,
      'allowedAudiences': ?allowedAudiences,
      'allowedGroups': ?allowedGroups,
      'allowedIdentities': ?allowedIdentities,
      'clientId': clientId,
      'clientSecretCertificateThumbprint': ?clientSecretCertificateThumbprint,
      'clientSecretSettingName': ?clientSecretSettingName,
      'jwtAllowedClientApplications': ?jwtAllowedClientApplications,
      'jwtAllowedGroups': ?jwtAllowedGroups,
      'loginParameters': ?loginParameters,
      'tenantAuthEndpoint': tenantAuthEndpoint,
      'wwwAuthenticationDisabled': ?wwwAuthenticationDisabled,
    };
  }

  factory LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppAuthSettingsV2ActiveDirectoryV2(
      allowedApplications: (() { final guardedValue = map['allowedApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedGroups: (() { final guardedValue = map['allowedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedIdentities: (() { final guardedValue = map['allowedIdentities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretCertificateThumbprint: (() { final guardedValue = map['clientSecretCertificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jwtAllowedClientApplications: (() { final guardedValue = map['jwtAllowedClientApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jwtAllowedGroups: (() { final guardedValue = map['jwtAllowedGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loginParameters: (() { final guardedValue = map['loginParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantAuthEndpoint: pulumi.Input.fromValue(map['tenantAuthEndpoint'] as String),
      wwwAuthenticationDisabled: (() { final guardedValue = map['wwwAuthenticationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
