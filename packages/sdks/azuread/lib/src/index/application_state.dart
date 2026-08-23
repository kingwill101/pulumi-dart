// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_api.dart';
import 'application_app_role.dart';
import 'application_feature_tag.dart';
import 'application_optional_claims.dart';
import 'application_password.dart';
import 'application_public_client.dart';
import 'application_required_resource_access.dart';
import 'application_single_page_application.dart';
import 'application_web.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// An `api` block as documented below, which configures API related settings for this application.
  final pulumi.Input<ApplicationApi>? api;
  /// A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  final pulumi.Input<Map<String, String>>? appRoleIds;
  /// A collection of `appRole` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  final pulumi.Input<List<ApplicationAppRole>>? appRoles;
  /// The Client ID for the application.
  final pulumi.Input<String>? clientId;
  /// A description of the application, as shown to end users.
  final pulumi.Input<String>? description;
  /// Specifies whether this application supports device authentication without a user. Defaults to `false`.
  final pulumi.Input<bool>? deviceOnlyAuthEnabled;
  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  final pulumi.Input<String>? disabledByMicrosoft;
  /// The display name for the application.
  final pulumi.Input<String>? displayName;
  /// Specifies whether the application is a public client. Appropriate for apps using token grant flows that don't use a redirect URI. Defaults to `false`.
  final pulumi.Input<bool>? fallbackPublicClientEnabled;
  /// A `featureTags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// &gt; **Features and Tags** Features are configured for an application using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `featureTags` and `tags` for an application at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Tag values also propagate to any linked service principals.
  final pulumi.Input<List<ApplicationFeatureTag>>? featureTags;
  /// A set of strings containing membership claims issued in a user or OAuth 2.0 access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  final pulumi.Input<List<String>>? groupMembershipClaims;
  /// A set of user-defined URI(s) that uniquely identify an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  final pulumi.Input<List<String>>? identifierUris;
  /// A logo image to upload for the application, as a raw base64-encoded string. The image should be in gif, jpeg or png format. Note that once an image has been uploaded, it is not possible to remove it without replacing it with another image.
  final pulumi.Input<String>? logoImage;
  /// CDN URL to the application's logo, as uploaded with the `logoImage` property.
  final pulumi.Input<String>? logoUrl;
  /// URL of the application's marketing page.
  final pulumi.Input<String>? marketingUrl;
  /// User-specified notes relevant for the management of the application.
  final pulumi.Input<String>? notes;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  final pulumi.Input<Map<String, String>>? oauth2PermissionScopeIds;
  /// Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. Defaults to `false`, which specifies that only GET requests are allowed.
  final pulumi.Input<bool>? oauth2PostResponseRequired;
  /// The application's object ID.
  final pulumi.Input<String>? objectId;
  /// An `optionalClaims` block as documented below.
  final pulumi.Input<ApplicationOptionalClaims>? optionalClaims;
  /// A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// &gt; **Ownership of Applications** It's recommended to always specify one or more application owners, including the principal being used to execute Terraform, such as in the example above.
  final pulumi.Input<List<String>>? owners;
  /// A single `password` block as documented below. The password is generated during creation. By default, no password is generated.
  ///
  /// &gt; **Creating a Password** The `password` block supports a single password for the application, and is provided so that a password can be generated when a new application is created. This helps to make new applications available for authentication more quickly. To add additional passwords to an application, see the azuread.ApplicationPassword resource.
  final pulumi.Input<ApplicationPassword>? password;
  /// If `true`, will return an error if an existing application is found with the same name. Defaults to `false`.
  final pulumi.Input<bool>? preventDuplicateNames;
  /// URL of the application's privacy statement.
  final pulumi.Input<String>? privacyStatementUrl;
  /// A `publicClient` block as documented below, which configures non-web app or non-web API application settings, for example mobile or other public clients such as an installed application running on a desktop device.
  final pulumi.Input<ApplicationPublicClient>? publicClient;
  /// The verified publisher domain for the application.
  final pulumi.Input<String>? publisherDomain;
  /// A collection of `requiredResourceAccess` blocks as documented below.
  final pulumi.Input<List<ApplicationRequiredResourceAccess>>? requiredResourceAccesses;
  /// References application context information from a Service or Asset Management database.
  final pulumi.Input<String>? serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  ///
  /// &gt; **Changing `signInAudience` for existing applications** When updating an existing application to use a `signInAudience` value of `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`, your configuration may no longer be valid. Refer to [official documentation](https://docs.microsoft.com/en-gb/azure/active-directory/develop/supported-accounts-validation) to understand the differences in supported configurations. Where possible, the provider will attempt to validate your configuration and try to avoid applying unsupported settings to your application.
  final pulumi.Input<String>? signInAudience;
  /// A `singlePageApplication` block as documented below, which configures single-page application (SPA) related settings for this application.
  final pulumi.Input<ApplicationSinglePageApplication>? singlePageApplication;
  /// URL of the application's support page.
  final pulumi.Input<String>? supportUrl;
  /// A set of tags to apply to the application for configuring specific behaviours of the application and linked service principals. Note that these are not provided for use by practitioners. Cannot be used together with the `featureTags` block.
  ///
  /// &gt; **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of applications. These can be specified using either the `tags` property or with the `featureTags` block. If you need to set any custom tag values not supported by the `featureTags` block, it's recommended to use the `tags` property. Tag values also propagate to any linked service principals.
  final pulumi.Input<List<String>>? tags;
  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  ///
  /// &gt; **Tip for Gallery Applications** This resource can  be used to instantiate a gallery application, however it will also attempt to manage the properties of the resulting application. If this is not desired, consider using the azuread.ApplicationRegistration resource instead.
  final pulumi.Input<String>? templateId;
  /// URL of the application's terms of service statement.
  final pulumi.Input<String>? termsOfServiceUrl;
  /// A `web` block as documented below, which configures web related settings for this application.
  ///
  /// &gt; **Application Name Uniqueness** Application names are not unique within Azure Active Directory. Use the `preventDuplicateNames` argument to check for existing applications if you want to avoid name collisions.
  final pulumi.Input<ApplicationWeb>? web;

  /// Creates a new [ApplicationState].
  /// [api] An `api` block as documented below, which configures API related settings for this application.
  /// [appRoleIds] A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A collection of `appRole` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [clientId] The Client ID for the application.
  /// [description] A description of the application, as shown to end users.
  /// [deviceOnlyAuthEnabled] Specifies whether this application supports device authentication without a user. Defaults to `false`.
  /// [disabledByMicrosoft] Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  /// [displayName] The display name for the application.
  /// [fallbackPublicClientEnabled] Specifies whether the application is a public client. Appropriate for apps using token grant flows that don't use a redirect URI. Defaults to `false`.
  /// [featureTags] A `featureTags` block as described below. Cannot be used together with the `tags` property.
  /// [groupMembershipClaims] A set of strings containing membership claims issued in a user or OAuth 2.0 access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  /// [identifierUris] A set of user-defined URI(s) that uniquely identify an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  /// [logoImage] A logo image to upload for the application, as a raw base64-encoded string. The image should be in gif, jpeg or png format. Note that once an image has been uploaded, it is not possible to remove it without replacing it with another image.
  /// [logoUrl] CDN URL to the application's logo, as uploaded with the `logoImage` property.
  /// [marketingUrl] URL of the application's marketing page.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PostResponseRequired] Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. Defaults to `false`, which specifies that only GET requests are allowed.
  /// [objectId] The application's object ID.
  /// [optionalClaims] An `optionalClaims` block as documented below.
  /// [owners] A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals. By default, no owners are assigned.
  /// [password] A single `password` block as documented below. The password is generated during creation. By default, no password is generated.
  /// [preventDuplicateNames] If `true`, will return an error if an existing application is found with the same name. Defaults to `false`.
  /// [privacyStatementUrl] URL of the application's privacy statement.
  /// [publicClient] A `publicClient` block as documented below, which configures non-web app or non-web API application settings, for example mobile or other public clients such as an installed application running on a desktop device.
  /// [publisherDomain] The verified publisher domain for the application.
  /// [requiredResourceAccesses] A collection of `requiredResourceAccess` blocks as documented below.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  /// [singlePageApplication] A `singlePageApplication` block as documented below, which configures single-page application (SPA) related settings for this application.
  /// [supportUrl] URL of the application's support page.
  /// [tags] A set of tags to apply to the application for configuring specific behaviours of the application and linked service principals. Note that these are not provided for use by practitioners. Cannot be used together with the `featureTags` block.
  /// [templateId] Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  /// [termsOfServiceUrl] URL of the application's terms of service statement.
  /// [web] A `web` block as documented below, which configures web related settings for this application.
  const ApplicationState({
    this.api,
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
    this.identifierUris,
    this.logoImage,
    this.logoUrl,
    this.marketingUrl,
    this.notes,
    this.oauth2PermissionScopeIds,
    this.oauth2PostResponseRequired,
    this.objectId,
    this.optionalClaims,
    this.owners,
    this.password,
    this.preventDuplicateNames,
    this.privacyStatementUrl,
    this.publicClient,
    this.publisherDomain,
    this.requiredResourceAccesses,
    this.serviceManagementReference,
    this.signInAudience,
    this.singlePageApplication,
    this.supportUrl,
    this.tags,
    this.templateId,
    this.termsOfServiceUrl,
    this.web,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?pulumi.Input.mapOptionalInputValue<ApplicationApi, Map<String, dynamic>>(api, (value) => value.toMap()),
      'appRoleIds': ?appRoleIds,
      'appRoles': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAppRole>, List<Map<String, dynamic>>>(appRoles, (value) => pulumi.Input.encodeList<ApplicationAppRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientId': ?clientId,
      'description': ?description,
      'deviceOnlyAuthEnabled': ?deviceOnlyAuthEnabled,
      'disabledByMicrosoft': ?disabledByMicrosoft,
      'displayName': ?displayName,
      'fallbackPublicClientEnabled': ?fallbackPublicClientEnabled,
      'featureTags': ?pulumi.Input.mapOptionalInputValue<List<ApplicationFeatureTag>, List<Map<String, dynamic>>>(featureTags, (value) => pulumi.Input.encodeList<ApplicationFeatureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupMembershipClaims': ?groupMembershipClaims,
      'identifierUris': ?identifierUris,
      'logoImage': ?logoImage,
      'logoUrl': ?logoUrl,
      'marketingUrl': ?marketingUrl,
      'notes': ?notes,
      'oauth2PermissionScopeIds': ?oauth2PermissionScopeIds,
      'oauth2PostResponseRequired': ?oauth2PostResponseRequired,
      'objectId': ?objectId,
      'optionalClaims': ?pulumi.Input.mapOptionalInputValue<ApplicationOptionalClaims, Map<String, dynamic>>(optionalClaims, (value) => value.toMap()),
      'owners': ?owners,
      'password': ?pulumi.Input.mapOptionalInputValue<ApplicationPassword, Map<String, dynamic>>(password, (value) => value.toMap()),
      'preventDuplicateNames': ?preventDuplicateNames,
      'privacyStatementUrl': ?privacyStatementUrl,
      'publicClient': ?pulumi.Input.mapOptionalInputValue<ApplicationPublicClient, Map<String, dynamic>>(publicClient, (value) => value.toMap()),
      'publisherDomain': ?publisherDomain,
      'requiredResourceAccesses': ?pulumi.Input.mapOptionalInputValue<List<ApplicationRequiredResourceAccess>, List<Map<String, dynamic>>>(requiredResourceAccesses, (value) => pulumi.Input.encodeList<ApplicationRequiredResourceAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceManagementReference': ?serviceManagementReference,
      'signInAudience': ?signInAudience,
      'singlePageApplication': ?pulumi.Input.mapOptionalInputValue<ApplicationSinglePageApplication, Map<String, dynamic>>(singlePageApplication, (value) => value.toMap()),
      'supportUrl': ?supportUrl,
      'tags': ?tags,
      'templateId': ?templateId,
      'termsOfServiceUrl': ?termsOfServiceUrl,
      'web': ?pulumi.Input.mapOptionalInputValue<ApplicationWeb, Map<String, dynamic>>(web, (value) => value.toMap()),
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationApi.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      appRoleIds: (() { final guardedValue = map['appRoleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appRoles: (() { final guardedValue = map['appRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationAppRole>(guardedValue, (value) => ApplicationAppRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceOnlyAuthEnabled: (() { final guardedValue = map['deviceOnlyAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disabledByMicrosoft: (() { final guardedValue = map['disabledByMicrosoft']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallbackPublicClientEnabled: (() { final guardedValue = map['fallbackPublicClientEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      featureTags: (() { final guardedValue = map['featureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationFeatureTag>(guardedValue, (value) => ApplicationFeatureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      groupMembershipClaims: (() { final guardedValue = map['groupMembershipClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identifierUris: (() { final guardedValue = map['identifierUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logoImage: (() { final guardedValue = map['logoImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoUrl: (() { final guardedValue = map['logoUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketingUrl: (() { final guardedValue = map['marketingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauth2PermissionScopeIds: (() { final guardedValue = map['oauth2PermissionScopeIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      oauth2PostResponseRequired: (() { final guardedValue = map['oauth2PostResponseRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalClaims: (() { final guardedValue = map['optionalClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationOptionalClaims.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationPassword.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preventDuplicateNames: (() { final guardedValue = map['preventDuplicateNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privacyStatementUrl: (() { final guardedValue = map['privacyStatementUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicClient: (() { final guardedValue = map['publicClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationPublicClient.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publisherDomain: (() { final guardedValue = map['publisherDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredResourceAccesses: (() { final guardedValue = map['requiredResourceAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationRequiredResourceAccess>(guardedValue, (value) => ApplicationRequiredResourceAccess.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceManagementReference: (() { final guardedValue = map['serviceManagementReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signInAudience: (() { final guardedValue = map['signInAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      singlePageApplication: (() { final guardedValue = map['singlePageApplication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationSinglePageApplication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportUrl: (() { final guardedValue = map['supportUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      termsOfServiceUrl: (() { final guardedValue = map['termsOfServiceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      web: (() { final guardedValue = map['web']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationWeb.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
