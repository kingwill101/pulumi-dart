// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppAuthSettingsV2ActiveDirectoryV2 {
  /// The list of allowed Applications for the Default Authorisation Policy.
  final pulumi.Input<List<String>> allowedApplications;
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final pulumi.Input<List<String>> allowedAudiences;
  /// The list of allowed Group Names for the Default Authorisation Policy.
  final pulumi.Input<List<String>> allowedGroups;
  /// The list of allowed Identities for the Default Authorisation Policy.
  final pulumi.Input<List<String>> allowedIdentities;
  /// The OAuth 2.0 client ID used by the app for authentication.
  final pulumi.Input<String> clientId;
  /// The thumbprint of the certificate used for signing purposes.
  final pulumi.Input<String> clientSecretCertificateThumbprint;
  /// The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  final pulumi.Input<String> clientSecretSettingName;
  /// The list of Allowed Client Applications in the JWT Claim.
  final pulumi.Input<List<String>> jwtAllowedClientApplications;
  /// The list of Allowed Groups in the JWT Claim.
  final pulumi.Input<List<String>> jwtAllowedGroups;
  /// A map of key-value pairs sent to the Authorisation Endpoint when a user logs in.
  final pulumi.Input<Map<String, String>> loginParameters;
  /// The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  final pulumi.Input<String> tenantAuthEndpoint;
  /// Is the www-authenticate provider omitted from the request?
  final pulumi.Input<bool> wwwAuthenticationDisabled;

  /// Creates a new [GetWindowsWebAppAuthSettingsV2ActiveDirectoryV2].
  /// [allowedApplications] The list of allowed Applications for the Default Authorisation Policy.
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [allowedGroups] The list of allowed Group Names for the Default Authorisation Policy.
  /// [allowedIdentities] The list of allowed Identities for the Default Authorisation Policy.
  /// [clientId] The OAuth 2.0 client ID used by the app for authentication.
  /// [clientSecretCertificateThumbprint] The thumbprint of the certificate used for signing purposes.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret used by the app for authentication.
  /// [jwtAllowedClientApplications] The list of Allowed Client Applications in the JWT Claim.
  /// [jwtAllowedGroups] The list of Allowed Groups in the JWT Claim.
  /// [loginParameters] A map of key-value pairs sent to the Authorisation Endpoint when a user logs in.
  /// [tenantAuthEndpoint] The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  /// [wwwAuthenticationDisabled] Is the www-authenticate provider omitted from the request?
  GetWindowsWebAppAuthSettingsV2ActiveDirectoryV2({
    required this.allowedApplications,
    required this.allowedAudiences,
    required this.allowedGroups,
    required this.allowedIdentities,
    required this.clientId,
    required this.clientSecretCertificateThumbprint,
    required this.clientSecretSettingName,
    required this.jwtAllowedClientApplications,
    required this.jwtAllowedGroups,
    required this.loginParameters,
    required this.tenantAuthEndpoint,
    required this.wwwAuthenticationDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': allowedApplications,
      'allowedAudiences': allowedAudiences,
      'allowedGroups': allowedGroups,
      'allowedIdentities': allowedIdentities,
      'clientId': clientId,
      'clientSecretCertificateThumbprint': clientSecretCertificateThumbprint,
      'clientSecretSettingName': clientSecretSettingName,
      'jwtAllowedClientApplications': jwtAllowedClientApplications,
      'jwtAllowedGroups': jwtAllowedGroups,
      'loginParameters': loginParameters,
      'tenantAuthEndpoint': tenantAuthEndpoint,
      'wwwAuthenticationDisabled': wwwAuthenticationDisabled,
    };
  }

  factory GetWindowsWebAppAuthSettingsV2ActiveDirectoryV2.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppAuthSettingsV2ActiveDirectoryV2(
      allowedApplications: ((map['allowedApplications'] as List).cast<String>()).input(),
      allowedAudiences: ((map['allowedAudiences'] as List).cast<String>()).input(),
      allowedGroups: ((map['allowedGroups'] as List).cast<String>()).input(),
      allowedIdentities: ((map['allowedIdentities'] as List).cast<String>()).input(),
      clientId: (map['clientId'] as String).input(),
      clientSecretCertificateThumbprint: (map['clientSecretCertificateThumbprint'] as String).input(),
      clientSecretSettingName: (map['clientSecretSettingName'] as String).input(),
      jwtAllowedClientApplications: ((map['jwtAllowedClientApplications'] as List).cast<String>()).input(),
      jwtAllowedGroups: ((map['jwtAllowedGroups'] as List).cast<String>()).input(),
      loginParameters: ((map['loginParameters'] as Map).cast<String, String>()).input(),
      tenantAuthEndpoint: (map['tenantAuthEndpoint'] as String).input(),
      wwwAuthenticationDisabled: (map['wwwAuthenticationDisabled'] as bool).input(),
    );
  }
}

