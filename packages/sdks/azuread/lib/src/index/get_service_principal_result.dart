// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_principal_app_role.dart';
import 'get_service_principal_feature.dart';
import 'get_service_principal_feature_tag.dart';
import 'get_service_principal_oauth2_permission_scope.dart';
import 'get_service_principal_saml_single_sign_on.dart';

/// Result data returned by getServicePrincipal.
class GetServicePrincipalResult {
  /// Whether the service principal account is enabled.
  final bool accountEnabled;
  /// A list of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  final List<String> alternativeNames;
  /// Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application.
  final bool appRoleAssignmentRequired;
  /// A mapping of app role values to app role IDs, as published by the associated application, intended to be useful when referencing app roles in other resources in your configuration.
  final Map<String, String> appRoleIds;
  /// A list of app roles published by the associated application, as documented below. For more information [official documentation](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  final List<GetServicePrincipalAppRole> appRoles;
  /// The tenant ID where the associated application is registered.
  final String applicationTenantId;
  /// The client ID of the application associated with this service principal.
  final String clientId;
  /// Permission help text that appears in the admin app assignment and consent experiences.
  final String description;
  /// Display name for the permission that appears in the admin consent and app assignment experiences.
  final String displayName;
  final List<GetServicePrincipalFeatureTag> featureTags;
  /// A `features` block as described below.
  final List<GetServicePrincipalFeature> features;
  /// Home page or landing page of the associated application.
  final String homepageUrl;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps.
  final String loginUrl;
  /// The URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect front-channel, back-channel or SAML logout protocols, taken from the associated application.
  final String logoutUrl;
  /// A free text field to capture information about the service principal, typically used for operational purposes.
  final String notes;
  /// A list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  final List<String> notificationEmailAddresses;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, as exposed by the associated application, intended to be useful when referencing permission scopes in other resources in your configuration.
  final Map<String, String> oauth2PermissionScopeIds;
  /// A collection of OAuth 2.0 delegated permissions exposed by the associated application. Each permission is covered by an `oauth2_permission_scopes` block as documented below.
  final List<GetServicePrincipalOauth2PermissionScope> oauth2PermissionScopes;
  /// The object ID of the service principal.
  final String objectId;
  /// The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps.
  final String preferredSingleSignOnMode;
  /// A list of URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application.
  final List<String> redirectUris;
  /// The URL where the service exposes SAML metadata for federation.
  final String samlMetadataUrl;
  /// A `saml_single_sign_on` block as documented below.
  final List<GetServicePrincipalSamlSingleSignOn> samlSingleSignOns;
  /// A list of identifier URI(s), copied over from the associated application.
  final List<String> servicePrincipalNames;
  /// The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  final String signInAudience;
  /// A list of tags applied to the service principal.
  final List<String> tags;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  final String type;

  /// Creates a new [GetServicePrincipalResult].
  /// [accountEnabled] Whether the service principal account is enabled.
  /// [alternativeNames] A list of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  /// [appRoleAssignmentRequired] Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application.
  /// [appRoleIds] A mapping of app role values to app role IDs, as published by the associated application, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A list of app roles published by the associated application, as documented below. For more information [official documentation](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [applicationTenantId] The tenant ID where the associated application is registered.
  /// [clientId] The client ID of the application associated with this service principal.
  /// [description] Permission help text that appears in the admin app assignment and consent experiences.
  /// [displayName] Display name for the permission that appears in the admin consent and app assignment experiences.
  /// [featureTags] Required.
  /// [features] A `features` block as described below.
  /// [homepageUrl] Home page or landing page of the associated application.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loginUrl] The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to logout an user using OpenId Connect front-channel, back-channel or SAML logout protocols, taken from the associated application.
  /// [notes] A free text field to capture information about the service principal, typically used for operational purposes.
  /// [notificationEmailAddresses] A list of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, as exposed by the associated application, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PermissionScopes] A collection of OAuth 2.0 delegated permissions exposed by the associated application. Each permission is covered by an `oauth2_permission_scopes` block as documented below.
  /// [objectId] The object ID of the service principal.
  /// [preferredSingleSignOnMode] The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps.
  /// [redirectUris] A list of URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application.
  /// [samlMetadataUrl] The URL where the service exposes SAML metadata for federation.
  /// [samlSingleSignOns] A `saml_single_sign_on` block as documented below.
  /// [servicePrincipalNames] A list of identifier URI(s), copied over from the associated application.
  /// [signInAudience] The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  /// [tags] A list of tags applied to the service principal.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  GetServicePrincipalResult({
    required this.accountEnabled,
    required this.alternativeNames,
    required this.appRoleAssignmentRequired,
    required this.appRoleIds,
    required this.appRoles,
    required this.applicationTenantId,
    required this.clientId,
    required this.description,
    required this.displayName,
    required this.featureTags,
    required this.features,
    required this.homepageUrl,
    required this.id,
    required this.loginUrl,
    required this.logoutUrl,
    required this.notes,
    required this.notificationEmailAddresses,
    required this.oauth2PermissionScopeIds,
    required this.oauth2PermissionScopes,
    required this.objectId,
    required this.preferredSingleSignOnMode,
    required this.redirectUris,
    required this.samlMetadataUrl,
    required this.samlSingleSignOns,
    required this.servicePrincipalNames,
    required this.signInAudience,
    required this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': accountEnabled,
      'alternativeNames': alternativeNames,
      'appRoleAssignmentRequired': appRoleAssignmentRequired,
      'appRoleIds': appRoleIds,
      'appRoles': pulumi.Input.encodeList<GetServicePrincipalAppRole, Map<String, dynamic>>(appRoles, (value) => value.toMap()),
      'applicationTenantId': applicationTenantId,
      'clientId': clientId,
      'description': description,
      'displayName': displayName,
      'featureTags': pulumi.Input.encodeList<GetServicePrincipalFeatureTag, Map<String, dynamic>>(featureTags, (value) => value.toMap()),
      'features': pulumi.Input.encodeList<GetServicePrincipalFeature, Map<String, dynamic>>(features, (value) => value.toMap()),
      'homepageUrl': homepageUrl,
      'id': id,
      'loginUrl': loginUrl,
      'logoutUrl': logoutUrl,
      'notes': notes,
      'notificationEmailAddresses': notificationEmailAddresses,
      'oauth2PermissionScopeIds': oauth2PermissionScopeIds,
      'oauth2PermissionScopes': pulumi.Input.encodeList<GetServicePrincipalOauth2PermissionScope, Map<String, dynamic>>(oauth2PermissionScopes, (value) => value.toMap()),
      'objectId': objectId,
      'preferredSingleSignOnMode': preferredSingleSignOnMode,
      'redirectUris': redirectUris,
      'samlMetadataUrl': samlMetadataUrl,
      'samlSingleSignOns': pulumi.Input.encodeList<GetServicePrincipalSamlSingleSignOn, Map<String, dynamic>>(samlSingleSignOns, (value) => value.toMap()),
      'servicePrincipalNames': servicePrincipalNames,
      'signInAudience': signInAudience,
      'tags': tags,
      'type': type,
    };
  }

  factory GetServicePrincipalResult.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalResult(
      accountEnabled: map['accountEnabled'] as bool,
      alternativeNames: (map['alternativeNames'] as List).cast<String>(),
      appRoleAssignmentRequired: map['appRoleAssignmentRequired'] as bool,
      appRoleIds: (map['appRoleIds'] as Map).cast<String, String>(),
      appRoles: pulumi.Input.decodeList<GetServicePrincipalAppRole>(map['appRoles'], (value) => GetServicePrincipalAppRole.fromMap((value as Map).cast<String, dynamic>())),
      applicationTenantId: map['applicationTenantId'] as String,
      clientId: map['clientId'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      featureTags: pulumi.Input.decodeList<GetServicePrincipalFeatureTag>(map['featureTags'], (value) => GetServicePrincipalFeatureTag.fromMap((value as Map).cast<String, dynamic>())),
      features: pulumi.Input.decodeList<GetServicePrincipalFeature>(map['features'], (value) => GetServicePrincipalFeature.fromMap((value as Map).cast<String, dynamic>())),
      homepageUrl: map['homepageUrl'] as String,
      id: map['id'] as String,
      loginUrl: map['loginUrl'] as String,
      logoutUrl: map['logoutUrl'] as String,
      notes: map['notes'] as String,
      notificationEmailAddresses: (map['notificationEmailAddresses'] as List).cast<String>(),
      oauth2PermissionScopeIds: (map['oauth2PermissionScopeIds'] as Map).cast<String, String>(),
      oauth2PermissionScopes: pulumi.Input.decodeList<GetServicePrincipalOauth2PermissionScope>(map['oauth2PermissionScopes'], (value) => GetServicePrincipalOauth2PermissionScope.fromMap((value as Map).cast<String, dynamic>())),
      objectId: map['objectId'] as String,
      preferredSingleSignOnMode: map['preferredSingleSignOnMode'] as String,
      redirectUris: (map['redirectUris'] as List).cast<String>(),
      samlMetadataUrl: map['samlMetadataUrl'] as String,
      samlSingleSignOns: pulumi.Input.decodeList<GetServicePrincipalSamlSingleSignOn>(map['samlSingleSignOns'], (value) => GetServicePrincipalSamlSingleSignOn.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalNames: (map['servicePrincipalNames'] as List).cast<String>(),
      signInAudience: map['signInAudience'] as String,
      tags: (map['tags'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

