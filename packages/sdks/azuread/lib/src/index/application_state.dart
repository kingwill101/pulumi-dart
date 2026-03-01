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
  /// A collection of `app_role` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
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
  /// A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// > **Features and Tags** Features are configured for an application using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for an application at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Tag values also propagate to any linked service principals.
  final pulumi.Input<List<ApplicationFeatureTag>>? featureTags;
  /// A set of strings containing membership claims issued in a user or OAuth 2.0 access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  final pulumi.Input<List<String>>? groupMembershipClaims;
  /// A set of user-defined URI(s) that uniquely identify an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  final pulumi.Input<List<String>>? identifierUris;
  /// A logo image to upload for the application, as a raw base64-encoded string. The image should be in gif, jpeg or png format. Note that once an image has been uploaded, it is not possible to remove it without replacing it with another image.
  final pulumi.Input<String>? logoImage;
  /// CDN URL to the application's logo, as uploaded with the `logo_image` property.
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
  /// An `optional_claims` block as documented below.
  final pulumi.Input<ApplicationOptionalClaims>? optionalClaims;
  /// A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// > **Ownership of Applications** It's recommended to always specify one or more application owners, including the principal being used to execute Terraform, such as in the example above.
  final pulumi.Input<List<String>>? owners;
  /// A single `password` block as documented below. The password is generated during creation. By default, no password is generated.
  ///
  /// > **Creating a Password** The `password` block supports a single password for the application, and is provided so that a password can be generated when a new application is created. This helps to make new applications available for authentication more quickly. To add additional passwords to an application, see the azuread.ApplicationPassword resource.
  final pulumi.Input<ApplicationPassword>? password;
  /// If `true`, will return an error if an existing application is found with the same name. Defaults to `false`.
  final pulumi.Input<bool>? preventDuplicateNames;
  /// URL of the application's privacy statement.
  final pulumi.Input<String>? privacyStatementUrl;
  /// A `public_client` block as documented below, which configures non-web app or non-web API application settings, for example mobile or other public clients such as an installed application running on a desktop device.
  final pulumi.Input<ApplicationPublicClient>? publicClient;
  /// The verified publisher domain for the application.
  final pulumi.Input<String>? publisherDomain;
  /// A collection of `required_resource_access` blocks as documented below.
  final pulumi.Input<List<ApplicationRequiredResourceAccess>>? requiredResourceAccesses;
  /// References application context information from a Service or Asset Management database.
  final pulumi.Input<String>? serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  ///
  /// > **Changing `sign_in_audience` for existing applications** When updating an existing application to use a `sign_in_audience` value of `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`, your configuration may no longer be valid. Refer to [official documentation](https://docs.microsoft.com/en-gb/azure/active-directory/develop/supported-accounts-validation) to understand the differences in supported configurations. Where possible, the provider will attempt to validate your configuration and try to avoid applying unsupported settings to your application.
  final pulumi.Input<String>? signInAudience;
  /// A `single_page_application` block as documented below, which configures single-page application (SPA) related settings for this application.
  final pulumi.Input<ApplicationSinglePageApplication>? singlePageApplication;
  /// URL of the application's support page.
  final pulumi.Input<String>? supportUrl;
  /// A set of tags to apply to the application for configuring specific behaviours of the application and linked service principals. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  ///
  /// > **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of applications. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values also propagate to any linked service principals.
  final pulumi.Input<List<String>>? tags;
  /// Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  ///
  /// > **Tip for Gallery Applications** This resource can  be used to instantiate a gallery application, however it will also attempt to manage the properties of the resulting application. If this is not desired, consider using the azuread.ApplicationRegistration resource instead.
  final pulumi.Input<String>? templateId;
  /// URL of the application's terms of service statement.
  final pulumi.Input<String>? termsOfServiceUrl;
  /// A `web` block as documented below, which configures web related settings for this application.
  ///
  /// > **Application Name Uniqueness** Application names are not unique within Azure Active Directory. Use the `prevent_duplicate_names` argument to check for existing applications if you want to avoid name collisions.
  final pulumi.Input<ApplicationWeb>? web;

  /// Creates a new [ApplicationState].
  /// [api] An `api` block as documented below, which configures API related settings for this application.
  /// [appRoleIds] A mapping of app role values to app role IDs, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A collection of `app_role` blocks as documented below. For more information see [official documentation on Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [clientId] The Client ID for the application.
  /// [description] A description of the application, as shown to end users.
  /// [deviceOnlyAuthEnabled] Specifies whether this application supports device authentication without a user. Defaults to `false`.
  /// [disabledByMicrosoft] Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  /// [displayName] The display name for the application.
  /// [fallbackPublicClientEnabled] Specifies whether the application is a public client. Appropriate for apps using token grant flows that don't use a redirect URI. Defaults to `false`.
  /// [featureTags] A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  /// [groupMembershipClaims] A set of strings containing membership claims issued in a user or OAuth 2.0 access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  /// [identifierUris] A set of user-defined URI(s) that uniquely identify an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant.
  /// [logoImage] A logo image to upload for the application, as a raw base64-encoded string. The image should be in gif, jpeg or png format. Note that once an image has been uploaded, it is not possible to remove it without replacing it with another image.
  /// [logoUrl] CDN URL to the application's logo, as uploaded with the `logo_image` property.
  /// [marketingUrl] URL of the application's marketing page.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PostResponseRequired] Specifies whether, as part of OAuth 2.0 token requests, Azure AD allows POST requests, as opposed to GET requests. Defaults to `false`, which specifies that only GET requests are allowed.
  /// [objectId] The application's object ID.
  /// [optionalClaims] An `optional_claims` block as documented below.
  /// [owners] A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals. By default, no owners are assigned.
  /// [password] A single `password` block as documented below. The password is generated during creation. By default, no password is generated.
  /// [preventDuplicateNames] If `true`, will return an error if an existing application is found with the same name. Defaults to `false`.
  /// [privacyStatementUrl] URL of the application's privacy statement.
  /// [publicClient] A `public_client` block as documented below, which configures non-web app or non-web API application settings, for example mobile or other public clients such as an installed application running on a desktop device.
  /// [publisherDomain] The verified publisher domain for the application.
  /// [requiredResourceAccesses] A collection of `required_resource_access` blocks as documented below.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  /// [singlePageApplication] A `single_page_application` block as documented below, which configures single-page application (SPA) related settings for this application.
  /// [supportUrl] URL of the application's support page.
  /// [tags] A set of tags to apply to the application for configuring specific behaviours of the application and linked service principals. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  /// [templateId] Unique ID for a templated application in the Azure AD App Gallery, from which to create the application. Changing this forces a new resource to be created.
  /// [termsOfServiceUrl] URL of the application's terms of service statement.
  /// [web] A `web` block as documented below, which configures web related settings for this application.
  ApplicationState({
    pulumi.Output<ApplicationApi>? api,
    pulumi.Output<Map<String, String>>? appRoleIds,
    pulumi.Output<List<ApplicationAppRole>>? appRoles,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? deviceOnlyAuthEnabled,
    pulumi.Output<String>? disabledByMicrosoft,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? fallbackPublicClientEnabled,
    pulumi.Output<List<ApplicationFeatureTag>>? featureTags,
    pulumi.Output<List<String>>? groupMembershipClaims,
    pulumi.Output<List<String>>? identifierUris,
    pulumi.Output<String>? logoImage,
    pulumi.Output<String>? logoUrl,
    pulumi.Output<String>? marketingUrl,
    pulumi.Output<String>? notes,
    pulumi.Output<Map<String, String>>? oauth2PermissionScopeIds,
    pulumi.Output<bool>? oauth2PostResponseRequired,
    pulumi.Output<String>? objectId,
    pulumi.Output<ApplicationOptionalClaims>? optionalClaims,
    pulumi.Output<List<String>>? owners,
    pulumi.Output<ApplicationPassword>? password,
    pulumi.Output<bool>? preventDuplicateNames,
    pulumi.Output<String>? privacyStatementUrl,
    pulumi.Output<ApplicationPublicClient>? publicClient,
    pulumi.Output<String>? publisherDomain,
    pulumi.Output<List<ApplicationRequiredResourceAccess>>? requiredResourceAccesses,
    pulumi.Output<String>? serviceManagementReference,
    pulumi.Output<String>? signInAudience,
    pulumi.Output<ApplicationSinglePageApplication>? singlePageApplication,
    pulumi.Output<String>? supportUrl,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? termsOfServiceUrl,
    pulumi.Output<ApplicationWeb>? web,
  }) :
      api = pulumi.Input.asOptionalInput<ApplicationApi>(api),
      appRoleIds = pulumi.Input.asOptionalInput<Map<String, String>>(appRoleIds),
      appRoles = pulumi.Input.asOptionalInput<List<ApplicationAppRole>>(appRoles),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceOnlyAuthEnabled = pulumi.Input.asOptionalInput<bool>(deviceOnlyAuthEnabled),
      disabledByMicrosoft = pulumi.Input.asOptionalInput<String>(disabledByMicrosoft),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      fallbackPublicClientEnabled = pulumi.Input.asOptionalInput<bool>(fallbackPublicClientEnabled),
      featureTags = pulumi.Input.asOptionalInput<List<ApplicationFeatureTag>>(featureTags),
      groupMembershipClaims = pulumi.Input.asOptionalInput<List<String>>(groupMembershipClaims),
      identifierUris = pulumi.Input.asOptionalInput<List<String>>(identifierUris),
      logoImage = pulumi.Input.asOptionalInput<String>(logoImage),
      logoUrl = pulumi.Input.asOptionalInput<String>(logoUrl),
      marketingUrl = pulumi.Input.asOptionalInput<String>(marketingUrl),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      oauth2PermissionScopeIds = pulumi.Input.asOptionalInput<Map<String, String>>(oauth2PermissionScopeIds),
      oauth2PostResponseRequired = pulumi.Input.asOptionalInput<bool>(oauth2PostResponseRequired),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      optionalClaims = pulumi.Input.asOptionalInput<ApplicationOptionalClaims>(optionalClaims),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      password = pulumi.Input.asOptionalInput<ApplicationPassword>(password),
      preventDuplicateNames = pulumi.Input.asOptionalInput<bool>(preventDuplicateNames),
      privacyStatementUrl = pulumi.Input.asOptionalInput<String>(privacyStatementUrl),
      publicClient = pulumi.Input.asOptionalInput<ApplicationPublicClient>(publicClient),
      publisherDomain = pulumi.Input.asOptionalInput<String>(publisherDomain),
      requiredResourceAccesses = pulumi.Input.asOptionalInput<List<ApplicationRequiredResourceAccess>>(requiredResourceAccesses),
      serviceManagementReference = pulumi.Input.asOptionalInput<String>(serviceManagementReference),
      signInAudience = pulumi.Input.asOptionalInput<String>(signInAudience),
      singlePageApplication = pulumi.Input.asOptionalInput<ApplicationSinglePageApplication>(singlePageApplication),
      supportUrl = pulumi.Input.asOptionalInput<String>(supportUrl),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      termsOfServiceUrl = pulumi.Input.asOptionalInput<String>(termsOfServiceUrl),
      web = pulumi.Input.asOptionalInput<ApplicationWeb>(web);

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
      api: map['api'] == null ? null : pulumi.Output.create<ApplicationApi>(ApplicationApi.fromMap((map['api'] as Map).cast<String, dynamic>())),
      appRoleIds: map['appRoleIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appRoleIds'] as Map).cast<String, String>()),
      appRoles: map['appRoles'] == null ? null : pulumi.Output.create<List<ApplicationAppRole>>(pulumi.Input.decodeList<ApplicationAppRole>(map['appRoles'], (value) => ApplicationAppRole.fromMap((value as Map).cast<String, dynamic>()))),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceOnlyAuthEnabled: map['deviceOnlyAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['deviceOnlyAuthEnabled'] as bool),
      disabledByMicrosoft: map['disabledByMicrosoft'] == null ? null : pulumi.Output.create<String>(map['disabledByMicrosoft'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      fallbackPublicClientEnabled: map['fallbackPublicClientEnabled'] == null ? null : pulumi.Output.create<bool>(map['fallbackPublicClientEnabled'] as bool),
      featureTags: map['featureTags'] == null ? null : pulumi.Output.create<List<ApplicationFeatureTag>>(pulumi.Input.decodeList<ApplicationFeatureTag>(map['featureTags'], (value) => ApplicationFeatureTag.fromMap((value as Map).cast<String, dynamic>()))),
      groupMembershipClaims: map['groupMembershipClaims'] == null ? null : pulumi.Output.create<List<String>>((map['groupMembershipClaims'] as List).cast<String>()),
      identifierUris: map['identifierUris'] == null ? null : pulumi.Output.create<List<String>>((map['identifierUris'] as List).cast<String>()),
      logoImage: map['logoImage'] == null ? null : pulumi.Output.create<String>(map['logoImage'] as String),
      logoUrl: map['logoUrl'] == null ? null : pulumi.Output.create<String>(map['logoUrl'] as String),
      marketingUrl: map['marketingUrl'] == null ? null : pulumi.Output.create<String>(map['marketingUrl'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      oauth2PermissionScopeIds: map['oauth2PermissionScopeIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['oauth2PermissionScopeIds'] as Map).cast<String, String>()),
      oauth2PostResponseRequired: map['oauth2PostResponseRequired'] == null ? null : pulumi.Output.create<bool>(map['oauth2PostResponseRequired'] as bool),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      optionalClaims: map['optionalClaims'] == null ? null : pulumi.Output.create<ApplicationOptionalClaims>(ApplicationOptionalClaims.fromMap((map['optionalClaims'] as Map).cast<String, dynamic>())),
      owners: map['owners'] == null ? null : pulumi.Output.create<List<String>>((map['owners'] as List).cast<String>()),
      password: map['password'] == null ? null : pulumi.Output.create<ApplicationPassword>(ApplicationPassword.fromMap((map['password'] as Map).cast<String, dynamic>())),
      preventDuplicateNames: map['preventDuplicateNames'] == null ? null : pulumi.Output.create<bool>(map['preventDuplicateNames'] as bool),
      privacyStatementUrl: map['privacyStatementUrl'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUrl'] as String),
      publicClient: map['publicClient'] == null ? null : pulumi.Output.create<ApplicationPublicClient>(ApplicationPublicClient.fromMap((map['publicClient'] as Map).cast<String, dynamic>())),
      publisherDomain: map['publisherDomain'] == null ? null : pulumi.Output.create<String>(map['publisherDomain'] as String),
      requiredResourceAccesses: map['requiredResourceAccesses'] == null ? null : pulumi.Output.create<List<ApplicationRequiredResourceAccess>>(pulumi.Input.decodeList<ApplicationRequiredResourceAccess>(map['requiredResourceAccesses'], (value) => ApplicationRequiredResourceAccess.fromMap((value as Map).cast<String, dynamic>()))),
      serviceManagementReference: map['serviceManagementReference'] == null ? null : pulumi.Output.create<String>(map['serviceManagementReference'] as String),
      signInAudience: map['signInAudience'] == null ? null : pulumi.Output.create<String>(map['signInAudience'] as String),
      singlePageApplication: map['singlePageApplication'] == null ? null : pulumi.Output.create<ApplicationSinglePageApplication>(ApplicationSinglePageApplication.fromMap((map['singlePageApplication'] as Map).cast<String, dynamic>())),
      supportUrl: map['supportUrl'] == null ? null : pulumi.Output.create<String>(map['supportUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : pulumi.Output.create<String>(map['termsOfServiceUrl'] as String),
      web: map['web'] == null ? null : pulumi.Output.create<ApplicationWeb>(ApplicationWeb.fromMap((map['web'] as Map).cast<String, dynamic>())),
    );
  }
}

