// ignore_for_file: unused_element, unnecessary_cast


class GetServicePrincipalsServicePrincipal {
  /// Whether the service principal account is enabled.
  final bool accountEnabled;
  /// Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application.
  final bool appRoleAssignmentRequired;
  /// The tenant ID where the associated application is registered.
  final String applicationTenantId;
  /// The application ID (client ID) for the associated application
  final String clientId;
  /// The display name of the application associated with this service principal.
  final String displayName;
  /// The object ID of the service principal.
  final String objectId;
  /// The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps.
  final String preferredSingleSignOnMode;
  /// The URL where the service exposes SAML metadata for federation.
  final String samlMetadataUrl;
  /// A list of identifier URI(s), copied over from the associated application.
  final List<String> servicePrincipalNames;
  /// The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  final String signInAudience;
  /// A list of tags applied to the service principal.
  final List<String> tags;
  /// Identifies whether the service principal represents an application or a managed identity. Possible values include `Application` or `ManagedIdentity`.
  final String type;

  /// Creates a new [GetServicePrincipalsServicePrincipal].
  /// [accountEnabled] Whether the service principal account is enabled.
  /// [appRoleAssignmentRequired] Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application.
  /// [applicationTenantId] The tenant ID where the associated application is registered.
  /// [clientId] The application ID (client ID) for the associated application
  /// [displayName] The display name of the application associated with this service principal.
  /// [objectId] The object ID of the service principal.
  /// [preferredSingleSignOnMode] The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps.
  /// [samlMetadataUrl] The URL where the service exposes SAML metadata for federation.
  /// [servicePrincipalNames] A list of identifier URI(s), copied over from the associated application.
  /// [signInAudience] The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  /// [tags] A list of tags applied to the service principal.
  /// [type] Identifies whether the service principal represents an application or a managed identity. Possible values include `Application` or `ManagedIdentity`.
  GetServicePrincipalsServicePrincipal({
    required this.accountEnabled,
    required this.appRoleAssignmentRequired,
    required this.applicationTenantId,
    required this.clientId,
    required this.displayName,
    required this.objectId,
    required this.preferredSingleSignOnMode,
    required this.samlMetadataUrl,
    required this.servicePrincipalNames,
    required this.signInAudience,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': accountEnabled,
      'appRoleAssignmentRequired': appRoleAssignmentRequired,
      'applicationTenantId': applicationTenantId,
      'clientId': clientId,
      'displayName': displayName,
      'objectId': objectId,
      'preferredSingleSignOnMode': preferredSingleSignOnMode,
      'samlMetadataUrl': samlMetadataUrl,
      'servicePrincipalNames': servicePrincipalNames,
      'signInAudience': signInAudience,
      'tags': tags,
      'type': type,
    };
  }

  factory GetServicePrincipalsServicePrincipal.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalsServicePrincipal(
      accountEnabled: map['accountEnabled'] as bool,
      appRoleAssignmentRequired: map['appRoleAssignmentRequired'] as bool,
      applicationTenantId: map['applicationTenantId'] as String,
      clientId: map['clientId'] as String,
      displayName: map['displayName'] as String,
      objectId: map['objectId'] as String,
      preferredSingleSignOnMode: map['preferredSingleSignOnMode'] as String,
      samlMetadataUrl: map['samlMetadataUrl'] as String,
      servicePrincipalNames: (map['servicePrincipalNames'] as List).cast<String>(),
      signInAudience: map['signInAudience'] as String,
      tags: (map['tags'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

