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
  final List<GetApplicationApi>? apis;
  /// A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  final Map<String, String>? appRoleIds;
  /// A collection of `appRole` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  final List<GetApplicationAppRole>? appRoles;
  /// The Client ID for the application.
  final String? clientId;
  /// Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  final String? description;
  /// Specifies whether this application supports device authentication without a user.
  final bool? deviceOnlyAuthEnabled;
  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  final String? disabledByMicrosoft;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final String? displayName;
  /// The fallback application type as public client, such as an installed application running on a mobile device.
  final bool? fallbackPublicClientEnabled;
  /// A `features` block as described below.
  final List<GetApplicationFeatureTag>? featureTags;
  /// The `groups` claim issued in a user or OAuth 2.0 access token that the app expects.
  final List<String>? groupMembershipClaims;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? identifierUri;
  /// A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  final List<String>? identifierUris;
  /// CDN URL to the application's logo.
  final String? logoUrl;
  /// URL of the application's marketing page.
  final String? marketingUrl;
  /// User-specified notes relevant for the management of the application.
  final String? notes;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  final Map<String, String>? oauth2PermissionScopeIds;
  /// Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. When `false`, only GET requests are allowed.
  final bool? oauth2PostResponseRequired;
  /// The application's object ID.
  final String? objectId;
  /// An `optionalClaims` block as documented below.
  final List<GetApplicationOptionalClaim>? optionalClaims;
  /// A list of object IDs of principals that are assigned ownership of the application.
  final List<String>? owners;
  /// URL of the application's privacy statement.
  final String? privacyStatementUrl;
  /// A `publicClient` block as documented below.
  final List<GetApplicationPublicClient>? publicClients;
  /// The verified publisher domain for the application.
  final String? publisherDomain;
  /// A collection of `requiredResourceAccess` blocks as documented below.
  final List<GetApplicationRequiredResourceAccess>? requiredResourceAccesses;
  /// References application context information from a Service or Asset Management database.
  final String? serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. One of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  final String? signInAudience;
  /// A `singlePageApplication` block as documented below.
  final List<GetApplicationSinglePageApplication>? singlePageApplications;
  /// URL of the application's support page.
  final String? supportUrl;
  /// A list of tags applied to the application.
  final List<String>? tags;
  /// URL of the application's terms of service statement.
  final String? termsOfServiceUrl;
  /// A `web` block as documented below.
  final List<GetApplicationWeb>? webs;

  /// Creates a new [GetApplicationResult].
  /// [apis] An `api` block as documented below.
  /// [appRoleIds] A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A collection of `appRole` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [clientId] The Client ID for the application.
  /// [description] Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences.
  /// [deviceOnlyAuthEnabled] Specifies whether this application supports device authentication without a user.
  /// [disabledByMicrosoft] Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [fallbackPublicClientEnabled] The fallback application type as public client, such as an installed application running on a mobile device.
  /// [featureTags] A `features` block as described below.
  /// [groupMembershipClaims] The `groups` claim issued in a user or OAuth 2.0 access token that the app expects.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifierUri] Optional.
  /// [identifierUris] A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  /// [logoUrl] CDN URL to the application's logo.
  /// [marketingUrl] URL of the application's marketing page.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PostResponseRequired] Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. When `false`, only GET requests are allowed.
  /// [objectId] The application's object ID.
  /// [optionalClaims] An `optionalClaims` block as documented below.
  /// [owners] A list of object IDs of principals that are assigned ownership of the application.
  /// [privacyStatementUrl] URL of the application's privacy statement.
  /// [publicClients] A `publicClient` block as documented below.
  /// [publisherDomain] The verified publisher domain for the application.
  /// [requiredResourceAccesses] A collection of `requiredResourceAccess` blocks as documented below.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. One of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  /// [singlePageApplications] A `singlePageApplication` block as documented below.
  /// [supportUrl] URL of the application's support page.
  /// [tags] A list of tags applied to the application.
  /// [termsOfServiceUrl] URL of the application's terms of service statement.
  /// [webs] A `web` block as documented below.
  const GetApplicationResult({
    this.apis,
    this.appRoleIds,
    this.appRoles,
    this.clientId,
    this.description,
    this.deviceOnlyAuthEnabled,
    this.disabledByMicrosoft,
    this.displayName,
    this.fallbackPublicClientEnabled,
    this.featureTags,
    this.groupMembershipClaims,
    this.id,
    this.identifierUri,
    this.identifierUris,
    this.logoUrl,
    this.marketingUrl,
    this.notes,
    this.oauth2PermissionScopeIds,
    this.oauth2PostResponseRequired,
    this.objectId,
    this.optionalClaims,
    this.owners,
    this.privacyStatementUrl,
    this.publicClients,
    this.publisherDomain,
    this.requiredResourceAccesses,
    this.serviceManagementReference,
    this.signInAudience,
    this.singlePageApplications,
    this.supportUrl,
    this.tags,
    this.termsOfServiceUrl,
    this.webs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apis': ?(() { final guardedValue = apis; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationApi, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'appRoleIds': ?appRoleIds,
      'appRoles': ?(() { final guardedValue = appRoles; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationAppRole, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientId': ?clientId,
      'description': ?description,
      'deviceOnlyAuthEnabled': ?deviceOnlyAuthEnabled,
      'disabledByMicrosoft': ?disabledByMicrosoft,
      'displayName': ?displayName,
      'fallbackPublicClientEnabled': ?fallbackPublicClientEnabled,
      'featureTags': ?(() { final guardedValue = featureTags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationFeatureTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'groupMembershipClaims': ?groupMembershipClaims,
      'id': ?id,
      'identifierUri': ?identifierUri,
      'identifierUris': ?identifierUris,
      'logoUrl': ?logoUrl,
      'marketingUrl': ?marketingUrl,
      'notes': ?notes,
      'oauth2PermissionScopeIds': ?oauth2PermissionScopeIds,
      'oauth2PostResponseRequired': ?oauth2PostResponseRequired,
      'objectId': ?objectId,
      'optionalClaims': ?(() { final guardedValue = optionalClaims; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationOptionalClaim, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'owners': ?owners,
      'privacyStatementUrl': ?privacyStatementUrl,
      'publicClients': ?(() { final guardedValue = publicClients; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationPublicClient, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publisherDomain': ?publisherDomain,
      'requiredResourceAccesses': ?(() { final guardedValue = requiredResourceAccesses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationRequiredResourceAccess, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceManagementReference': ?serviceManagementReference,
      'signInAudience': ?signInAudience,
      'singlePageApplications': ?(() { final guardedValue = singlePageApplications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationSinglePageApplication, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'supportUrl': ?supportUrl,
      'tags': ?tags,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'webs': ?(() { final guardedValue = webs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApplicationWeb, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult(
      apis: (() { final guardedValue = map['apis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationApi>(guardedValue, (value) => GetApplicationApi.fromMap((value as Map).cast<String, dynamic>())); })(),
      appRoleIds: (() { final guardedValue = map['appRoleIds']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      appRoles: (() { final guardedValue = map['appRoles']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationAppRole>(guardedValue, (value) => GetApplicationAppRole.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deviceOnlyAuthEnabled: (() { final guardedValue = map['deviceOnlyAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disabledByMicrosoft: (() { final guardedValue = map['disabledByMicrosoft']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fallbackPublicClientEnabled: (() { final guardedValue = map['fallbackPublicClientEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      featureTags: (() { final guardedValue = map['featureTags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationFeatureTag>(guardedValue, (value) => GetApplicationFeatureTag.fromMap((value as Map).cast<String, dynamic>())); })(),
      groupMembershipClaims: (() { final guardedValue = map['groupMembershipClaims']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifierUri: (() { final guardedValue = map['identifierUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifierUris: (() { final guardedValue = map['identifierUris']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      logoUrl: (() { final guardedValue = map['logoUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      marketingUrl: (() { final guardedValue = map['marketingUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      oauth2PermissionScopeIds: (() { final guardedValue = map['oauth2PermissionScopeIds']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      oauth2PostResponseRequired: (() { final guardedValue = map['oauth2PostResponseRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optionalClaims: (() { final guardedValue = map['optionalClaims']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationOptionalClaim>(guardedValue, (value) => GetApplicationOptionalClaim.fromMap((value as Map).cast<String, dynamic>())); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      privacyStatementUrl: (() { final guardedValue = map['privacyStatementUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicClients: (() { final guardedValue = map['publicClients']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationPublicClient>(guardedValue, (value) => GetApplicationPublicClient.fromMap((value as Map).cast<String, dynamic>())); })(),
      publisherDomain: (() { final guardedValue = map['publisherDomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requiredResourceAccesses: (() { final guardedValue = map['requiredResourceAccesses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationRequiredResourceAccess>(guardedValue, (value) => GetApplicationRequiredResourceAccess.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceManagementReference: (() { final guardedValue = map['serviceManagementReference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signInAudience: (() { final guardedValue = map['signInAudience']; if (guardedValue == null) return null; return guardedValue as String; })(),
      singlePageApplications: (() { final guardedValue = map['singlePageApplications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationSinglePageApplication>(guardedValue, (value) => GetApplicationSinglePageApplication.fromMap((value as Map).cast<String, dynamic>())); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      termsOfServiceUrl: (() { final guardedValue = map['termsOfServiceUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webs: (() { final guardedValue = map['webs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApplicationWeb>(guardedValue, (value) => GetApplicationWeb.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
