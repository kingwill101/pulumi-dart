// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_api.dart';
import 'get_application_app_role.dart';
import 'get_application_feature_tag.dart';
import 'get_application_optional_claim.dart';
import 'get_application_public_client.dart';
import 'get_application_required_resource_access.dart';
import 'get_application_single_page_application.dart';
import 'get_application_web.dart';

/// Result data returned by getApplication.
class GetApplicationResult {
  /// An `api` block as documented below.
  final List<GetApplicationApi> apis;
  /// A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  final Map<String, String> appRoleIds;
  /// A collection of `app_role` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  final List<GetApplicationAppRole> appRoles;
  /// The Client ID for the application.
  final String clientId;
  /// Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  final String description;
  /// Specifies whether this application supports device authentication without a user.
  final bool deviceOnlyAuthEnabled;
  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  final String disabledByMicrosoft;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final String displayName;
  /// The fallback application type as public client, such as an installed application running on a mobile device.
  final bool fallbackPublicClientEnabled;
  /// A `features` block as described below.
  final List<GetApplicationFeatureTag> featureTags;
  /// The `groups` claim issued in a user or OAuth 2.0 access token that the app expects.
  final List<String> groupMembershipClaims;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String identifierUri;
  /// A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  final List<String> identifierUris;
  /// CDN URL to the application's logo.
  final String logoUrl;
  /// URL of the application's marketing page.
  final String marketingUrl;
  /// User-specified notes relevant for the management of the application.
  final String notes;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  final Map<String, String> oauth2PermissionScopeIds;
  /// Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. When `false`, only GET requests are allowed.
  final bool oauth2PostResponseRequired;
  /// The application's object ID.
  final String objectId;
  /// An `optional_claims` block as documented below.
  final List<GetApplicationOptionalClaim> optionalClaims;
  /// A list of object IDs of principals that are assigned ownership of the application.
  final List<String> owners;
  /// URL of the application's privacy statement.
  final String privacyStatementUrl;
  /// A `public_client` block as documented below.
  final List<GetApplicationPublicClient> publicClients;
  /// The verified publisher domain for the application.
  final String publisherDomain;
  /// A collection of `required_resource_access` blocks as documented below.
  final List<GetApplicationRequiredResourceAccess> requiredResourceAccesses;
  /// References application context information from a Service or Asset Management database.
  final String serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. One of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  final String signInAudience;
  /// A `single_page_application` block as documented below.
  final List<GetApplicationSinglePageApplication> singlePageApplications;
  /// URL of the application's support page.
  final String supportUrl;
  /// A list of tags applied to the application.
  final List<String> tags;
  /// URL of the application's terms of service statement.
  final String termsOfServiceUrl;
  /// A `web` block as documented below.
  final List<GetApplicationWeb> webs;

  /// Creates a new [GetApplicationResult].
  /// [apis] An `api` block as documented below.
  /// [appRoleIds] A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A collection of `app_role` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [clientId] The Client ID for the application.
  /// [description] Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  /// [deviceOnlyAuthEnabled] Specifies whether this application supports device authentication without a user.
  /// [disabledByMicrosoft] Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [fallbackPublicClientEnabled] The fallback application type as public client, such as an installed application running on a mobile device.
  /// [featureTags] A `features` block as described below.
  /// [groupMembershipClaims] The `groups` claim issued in a user or OAuth 2.0 access token that the app expects.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifierUri] Required.
  /// [identifierUris] A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  /// [logoUrl] CDN URL to the application's logo.
  /// [marketingUrl] URL of the application's marketing page.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PostResponseRequired] Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. When `false`, only GET requests are allowed.
  /// [objectId] The application's object ID.
  /// [optionalClaims] An `optional_claims` block as documented below.
  /// [owners] A list of object IDs of principals that are assigned ownership of the application.
  /// [privacyStatementUrl] URL of the application's privacy statement.
  /// [publicClients] A `public_client` block as documented below.
  /// [publisherDomain] The verified publisher domain for the application.
  /// [requiredResourceAccesses] A collection of `required_resource_access` blocks as documented below.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. One of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  /// [singlePageApplications] A `single_page_application` block as documented below.
  /// [supportUrl] URL of the application's support page.
  /// [tags] A list of tags applied to the application.
  /// [termsOfServiceUrl] URL of the application's terms of service statement.
  /// [webs] A `web` block as documented below.
  GetApplicationResult({
    required this.apis,
    required this.appRoleIds,
    required this.appRoles,
    required this.clientId,
    required this.description,
    required this.deviceOnlyAuthEnabled,
    required this.disabledByMicrosoft,
    required this.displayName,
    required this.fallbackPublicClientEnabled,
    required this.featureTags,
    required this.groupMembershipClaims,
    required this.id,
    required this.identifierUri,
    required this.identifierUris,
    required this.logoUrl,
    required this.marketingUrl,
    required this.notes,
    required this.oauth2PermissionScopeIds,
    required this.oauth2PostResponseRequired,
    required this.objectId,
    required this.optionalClaims,
    required this.owners,
    required this.privacyStatementUrl,
    required this.publicClients,
    required this.publisherDomain,
    required this.requiredResourceAccesses,
    required this.serviceManagementReference,
    required this.signInAudience,
    required this.singlePageApplications,
    required this.supportUrl,
    required this.tags,
    required this.termsOfServiceUrl,
    required this.webs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apis': pulumi.Input.encodeList<GetApplicationApi, Map<String, dynamic>>(apis, (value) => value.toMap()),
      'appRoleIds': appRoleIds,
      'appRoles': pulumi.Input.encodeList<GetApplicationAppRole, Map<String, dynamic>>(appRoles, (value) => value.toMap()),
      'clientId': clientId,
      'description': description,
      'deviceOnlyAuthEnabled': deviceOnlyAuthEnabled,
      'disabledByMicrosoft': disabledByMicrosoft,
      'displayName': displayName,
      'fallbackPublicClientEnabled': fallbackPublicClientEnabled,
      'featureTags': pulumi.Input.encodeList<GetApplicationFeatureTag, Map<String, dynamic>>(featureTags, (value) => value.toMap()),
      'groupMembershipClaims': groupMembershipClaims,
      'id': id,
      'identifierUri': identifierUri,
      'identifierUris': identifierUris,
      'logoUrl': logoUrl,
      'marketingUrl': marketingUrl,
      'notes': notes,
      'oauth2PermissionScopeIds': oauth2PermissionScopeIds,
      'oauth2PostResponseRequired': oauth2PostResponseRequired,
      'objectId': objectId,
      'optionalClaims': pulumi.Input.encodeList<GetApplicationOptionalClaim, Map<String, dynamic>>(optionalClaims, (value) => value.toMap()),
      'owners': owners,
      'privacyStatementUrl': privacyStatementUrl,
      'publicClients': pulumi.Input.encodeList<GetApplicationPublicClient, Map<String, dynamic>>(publicClients, (value) => value.toMap()),
      'publisherDomain': publisherDomain,
      'requiredResourceAccesses': pulumi.Input.encodeList<GetApplicationRequiredResourceAccess, Map<String, dynamic>>(requiredResourceAccesses, (value) => value.toMap()),
      'serviceManagementReference': serviceManagementReference,
      'signInAudience': signInAudience,
      'singlePageApplications': pulumi.Input.encodeList<GetApplicationSinglePageApplication, Map<String, dynamic>>(singlePageApplications, (value) => value.toMap()),
      'supportUrl': supportUrl,
      'tags': tags,
      'termsOfServiceUrl': termsOfServiceUrl,
      'webs': pulumi.Input.encodeList<GetApplicationWeb, Map<String, dynamic>>(webs, (value) => value.toMap()),
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      apis: pulumi.Input.decodeList<GetApplicationApi>(map['apis']!, (value) => GetApplicationApi.fromMap((value as Map).cast<String, dynamic>())),
      appRoleIds: (map['appRoleIds'] as Map).cast<String, String>(),
      appRoles: pulumi.Input.decodeList<GetApplicationAppRole>(map['appRoles']!, (value) => GetApplicationAppRole.fromMap((value as Map).cast<String, dynamic>())),
      clientId: map['clientId'] as String,
      description: map['description'] as String,
      deviceOnlyAuthEnabled: map['deviceOnlyAuthEnabled'] as bool,
      disabledByMicrosoft: map['disabledByMicrosoft'] as String,
      displayName: map['displayName'] as String,
      fallbackPublicClientEnabled: map['fallbackPublicClientEnabled'] as bool,
      featureTags: pulumi.Input.decodeList<GetApplicationFeatureTag>(map['featureTags']!, (value) => GetApplicationFeatureTag.fromMap((value as Map).cast<String, dynamic>())),
      groupMembershipClaims: (map['groupMembershipClaims'] as List).cast<String>(),
      id: map['id'] as String,
      identifierUri: map['identifierUri'] as String,
      identifierUris: (map['identifierUris'] as List).cast<String>(),
      logoUrl: map['logoUrl'] as String,
      marketingUrl: map['marketingUrl'] as String,
      notes: map['notes'] as String,
      oauth2PermissionScopeIds: (map['oauth2PermissionScopeIds'] as Map).cast<String, String>(),
      oauth2PostResponseRequired: map['oauth2PostResponseRequired'] as bool,
      objectId: map['objectId'] as String,
      optionalClaims: pulumi.Input.decodeList<GetApplicationOptionalClaim>(map['optionalClaims']!, (value) => GetApplicationOptionalClaim.fromMap((value as Map).cast<String, dynamic>())),
      owners: (map['owners'] as List).cast<String>(),
      privacyStatementUrl: map['privacyStatementUrl'] as String,
      publicClients: pulumi.Input.decodeList<GetApplicationPublicClient>(map['publicClients']!, (value) => GetApplicationPublicClient.fromMap((value as Map).cast<String, dynamic>())),
      publisherDomain: map['publisherDomain'] as String,
      requiredResourceAccesses: pulumi.Input.decodeList<GetApplicationRequiredResourceAccess>(map['requiredResourceAccesses']!, (value) => GetApplicationRequiredResourceAccess.fromMap((value as Map).cast<String, dynamic>())),
      serviceManagementReference: map['serviceManagementReference'] as String,
      signInAudience: map['signInAudience'] as String,
      singlePageApplications: pulumi.Input.decodeList<GetApplicationSinglePageApplication>(map['singlePageApplications']!, (value) => GetApplicationSinglePageApplication.fromMap((value as Map).cast<String, dynamic>())),
      supportUrl: map['supportUrl'] as String,
      tags: (map['tags'] as List).cast<String>(),
      termsOfServiceUrl: map['termsOfServiceUrl'] as String,
      webs: pulumi.Input.decodeList<GetApplicationWeb>(map['webs']!, (value) => GetApplicationWeb.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

