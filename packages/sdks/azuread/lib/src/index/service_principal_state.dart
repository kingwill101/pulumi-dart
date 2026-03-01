// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_app_role.dart';
import 'service_principal_feature.dart';
import 'service_principal_feature_tag.dart';
import 'service_principal_oauth2_permission_scope.dart';
import 'service_principal_saml_single_sign_on.dart';

/// Input properties used for looking up and filtering ServicePrincipal resources.
class ServicePrincipalState {
  /// Whether or not the service principal account is enabled. Defaults to `true`.
  final pulumi.Input<bool>? accountEnabled;
  /// A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  final pulumi.Input<List<String>>? alternativeNames;
  /// Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to `false`.
  final pulumi.Input<bool>? appRoleAssignmentRequired;
  /// A mapping of app role values to app role IDs, as published by the associated application, intended to be useful when referencing app roles in other resources in your configuration.
  final pulumi.Input<Map<String, String>>? appRoleIds;
  /// A list of app roles published by the associated application, as documented below. For more information [official documentation](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  final pulumi.Input<List<ServicePrincipalAppRole>>? appRoles;
  /// The tenant ID where the associated application is registered.
  final pulumi.Input<String>? applicationTenantId;
  /// The client ID of the application for which to create a service principal.
  final pulumi.Input<String>? clientId;
  /// A description of the service principal provided for internal end-users.
  final pulumi.Input<String>? description;
  /// Display name for the app role that appears during app role assignment and in consent experiences.
  final pulumi.Input<String>? displayName;
  /// A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// > **Features and Tags** Features are configured for a service principal using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for a service principal at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Any tags configured for the linked application will propagate to this service principal.
  final pulumi.Input<List<ServicePrincipalFeatureTag>>? featureTags;
  /// Block of features to configure for this service principal using tags
  final pulumi.Input<List<ServicePrincipalFeature>>? features;
  /// Home page or landing page of the associated application.
  final pulumi.Input<String>? homepageUrl;
  /// The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on.
  final pulumi.Input<String>? loginUrl;
  /// The URL that will be used by Microsoft's authorization service to log out an user using OpenId Connect front-channel, back-channel or SAML logout protocols, taken from the associated application.
  final pulumi.Input<String>? logoutUrl;
  /// A free text field to capture information about the service principal, typically used for operational purposes.
  final pulumi.Input<String>? notes;
  /// A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  final pulumi.Input<List<String>>? notificationEmailAddresses;
  /// A mapping of OAuth2.0 permission scope values to scope IDs, as exposed by the associated application, intended to be useful when referencing permission scopes in other resources in your configuration.
  final pulumi.Input<Map<String, String>>? oauth2PermissionScopeIds;
  /// A list of OAuth 2.0 delegated permission scopes exposed by the associated application, as documented below.
  final pulumi.Input<List<ServicePrincipalOauth2PermissionScope>>? oauth2PermissionScopes;
  /// The object ID of the service principal.
  final pulumi.Input<String>? objectId;
  /// A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// > **Ownership of Service Principals** It's recommended to always specify one or more service principal owners, including the principal being used to execute Terraform, such as in the example above.
  final pulumi.Input<List<String>>? owners;
  /// The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset.
  final pulumi.Input<String>? preferredSingleSignOnMode;
  /// A list of URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application.
  final pulumi.Input<List<String>>? redirectUris;
  /// The URL where the service exposes SAML metadata for federation.
  final pulumi.Input<String>? samlMetadataUrl;
  /// A `saml_single_sign_on` block as documented below.
  final pulumi.Input<ServicePrincipalSamlSingleSignOn>? samlSingleSignOn;
  /// A list of identifier URI(s), copied over from the associated application.
  final pulumi.Input<List<String>>? servicePrincipalNames;
  /// The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  final pulumi.Input<String>? signInAudience;
  /// A set of tags to apply to the service principal for configuring specific behaviours of the service principal. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  ///
  /// > **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of service principals. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values set for the linked application will also propagate to this service principal.
  final pulumi.Input<List<String>>? tags;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  final pulumi.Input<String>? type;
  /// When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ///
  /// > **Caveats of `use_existing`** Enabling this behaviour is useful for managing existing service principals that may already be installed in your tenant for Microsoft-published APIs, as it allows you to make changes where permitted, and then also reference them in your Terraform configuration. However, the behaviour of delete operations is also affected - when `use_existing` is `true`, Terraform will still attempt to delete the service principal on destroy, although it will not raise an error if the deletion fails (as it often the case for first-party Microsoft applications).
  final pulumi.Input<bool>? useExisting;

  /// Creates a new [ServicePrincipalState].
  /// [accountEnabled] Whether or not the service principal account is enabled. Defaults to `true`.
  /// [alternativeNames] A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  /// [appRoleAssignmentRequired] Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to `false`.
  /// [appRoleIds] A mapping of app role values to app role IDs, as published by the associated application, intended to be useful when referencing app roles in other resources in your configuration.
  /// [appRoles] A list of app roles published by the associated application, as documented below. For more information [official documentation](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles).
  /// [applicationTenantId] The tenant ID where the associated application is registered.
  /// [clientId] The client ID of the application for which to create a service principal.
  /// [description] A description of the service principal provided for internal end-users.
  /// [displayName] Display name for the app role that appears during app role assignment and in consent experiences.
  /// [featureTags] A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  /// [features] Block of features to configure for this service principal using tags
  /// [homepageUrl] Home page or landing page of the associated application.
  /// [loginUrl] The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to log out an user using OpenId Connect front-channel, back-channel or SAML logout protocols, taken from the associated application.
  /// [notes] A free text field to capture information about the service principal, typically used for operational purposes.
  /// [notificationEmailAddresses] A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  /// [oauth2PermissionScopeIds] A mapping of OAuth2.0 permission scope values to scope IDs, as exposed by the associated application, intended to be useful when referencing permission scopes in other resources in your configuration.
  /// [oauth2PermissionScopes] A list of OAuth 2.0 delegated permission scopes exposed by the associated application, as documented below.
  /// [objectId] The object ID of the service principal.
  /// [owners] A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned.
  /// [preferredSingleSignOnMode] The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset.
  /// [redirectUris] A list of URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application.
  /// [samlMetadataUrl] The URL where the service exposes SAML metadata for federation.
  /// [samlSingleSignOn] A `saml_single_sign_on` block as documented below.
  /// [servicePrincipalNames] A list of identifier URI(s), copied over from the associated application.
  /// [signInAudience] The Microsoft account types that are supported for the associated application. Possible values include `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`.
  /// [tags] A set of tags to apply to the service principal for configuring specific behaviours of the service principal. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  /// [type] Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  /// [useExisting] When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ServicePrincipalState({
    pulumi.Output<bool>? accountEnabled,
    pulumi.Output<List<String>>? alternativeNames,
    pulumi.Output<bool>? appRoleAssignmentRequired,
    pulumi.Output<Map<String, String>>? appRoleIds,
    pulumi.Output<List<ServicePrincipalAppRole>>? appRoles,
    pulumi.Output<String>? applicationTenantId,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<ServicePrincipalFeatureTag>>? featureTags,
    pulumi.Output<List<ServicePrincipalFeature>>? features,
    pulumi.Output<String>? homepageUrl,
    pulumi.Output<String>? loginUrl,
    pulumi.Output<String>? logoutUrl,
    pulumi.Output<String>? notes,
    pulumi.Output<List<String>>? notificationEmailAddresses,
    pulumi.Output<Map<String, String>>? oauth2PermissionScopeIds,
    pulumi.Output<List<ServicePrincipalOauth2PermissionScope>>? oauth2PermissionScopes,
    pulumi.Output<String>? objectId,
    pulumi.Output<List<String>>? owners,
    pulumi.Output<String>? preferredSingleSignOnMode,
    pulumi.Output<List<String>>? redirectUris,
    pulumi.Output<String>? samlMetadataUrl,
    pulumi.Output<ServicePrincipalSamlSingleSignOn>? samlSingleSignOn,
    pulumi.Output<List<String>>? servicePrincipalNames,
    pulumi.Output<String>? signInAudience,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<bool>? useExisting,
  }) :
      accountEnabled = pulumi.Input.asOptionalInput<bool>(accountEnabled),
      alternativeNames = pulumi.Input.asOptionalInput<List<String>>(alternativeNames),
      appRoleAssignmentRequired = pulumi.Input.asOptionalInput<bool>(appRoleAssignmentRequired),
      appRoleIds = pulumi.Input.asOptionalInput<Map<String, String>>(appRoleIds),
      appRoles = pulumi.Input.asOptionalInput<List<ServicePrincipalAppRole>>(appRoles),
      applicationTenantId = pulumi.Input.asOptionalInput<String>(applicationTenantId),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      featureTags = pulumi.Input.asOptionalInput<List<ServicePrincipalFeatureTag>>(featureTags),
      features = pulumi.Input.asOptionalInput<List<ServicePrincipalFeature>>(features),
      homepageUrl = pulumi.Input.asOptionalInput<String>(homepageUrl),
      loginUrl = pulumi.Input.asOptionalInput<String>(loginUrl),
      logoutUrl = pulumi.Input.asOptionalInput<String>(logoutUrl),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      notificationEmailAddresses = pulumi.Input.asOptionalInput<List<String>>(notificationEmailAddresses),
      oauth2PermissionScopeIds = pulumi.Input.asOptionalInput<Map<String, String>>(oauth2PermissionScopeIds),
      oauth2PermissionScopes = pulumi.Input.asOptionalInput<List<ServicePrincipalOauth2PermissionScope>>(oauth2PermissionScopes),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      preferredSingleSignOnMode = pulumi.Input.asOptionalInput<String>(preferredSingleSignOnMode),
      redirectUris = pulumi.Input.asOptionalInput<List<String>>(redirectUris),
      samlMetadataUrl = pulumi.Input.asOptionalInput<String>(samlMetadataUrl),
      samlSingleSignOn = pulumi.Input.asOptionalInput<ServicePrincipalSamlSingleSignOn>(samlSingleSignOn),
      servicePrincipalNames = pulumi.Input.asOptionalInput<List<String>>(servicePrincipalNames),
      signInAudience = pulumi.Input.asOptionalInput<String>(signInAudience),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      useExisting = pulumi.Input.asOptionalInput<bool>(useExisting);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': ?accountEnabled,
      'alternativeNames': ?alternativeNames,
      'appRoleAssignmentRequired': ?appRoleAssignmentRequired,
      'appRoleIds': ?appRoleIds,
      'appRoles': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalAppRole>, List<Map<String, dynamic>>>(appRoles, (value) => pulumi.Input.encodeList<ServicePrincipalAppRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationTenantId': ?applicationTenantId,
      'clientId': ?clientId,
      'description': ?description,
      'displayName': ?displayName,
      'featureTags': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalFeatureTag>, List<Map<String, dynamic>>>(featureTags, (value) => pulumi.Input.encodeList<ServicePrincipalFeatureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<ServicePrincipalFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'homepageUrl': ?homepageUrl,
      'loginUrl': ?loginUrl,
      'logoutUrl': ?logoutUrl,
      'notes': ?notes,
      'notificationEmailAddresses': ?notificationEmailAddresses,
      'oauth2PermissionScopeIds': ?oauth2PermissionScopeIds,
      'oauth2PermissionScopes': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalOauth2PermissionScope>, List<Map<String, dynamic>>>(oauth2PermissionScopes, (value) => pulumi.Input.encodeList<ServicePrincipalOauth2PermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectId': ?objectId,
      'owners': ?owners,
      'preferredSingleSignOnMode': ?preferredSingleSignOnMode,
      'redirectUris': ?redirectUris,
      'samlMetadataUrl': ?samlMetadataUrl,
      'samlSingleSignOn': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalSamlSingleSignOn, Map<String, dynamic>>(samlSingleSignOn, (value) => value.toMap()),
      'servicePrincipalNames': ?servicePrincipalNames,
      'signInAudience': ?signInAudience,
      'tags': ?tags,
      'type': ?type,
      'useExisting': ?useExisting,
    };
  }

  factory ServicePrincipalState.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalState(
      accountEnabled: map['accountEnabled'] == null ? null : pulumi.Output.create<bool>(map['accountEnabled'] as bool),
      alternativeNames: map['alternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['alternativeNames'] as List).cast<String>()),
      appRoleAssignmentRequired: map['appRoleAssignmentRequired'] == null ? null : pulumi.Output.create<bool>(map['appRoleAssignmentRequired'] as bool),
      appRoleIds: map['appRoleIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appRoleIds'] as Map).cast<String, String>()),
      appRoles: map['appRoles'] == null ? null : pulumi.Output.create<List<ServicePrincipalAppRole>>(pulumi.Input.decodeList<ServicePrincipalAppRole>(map['appRoles'], (value) => ServicePrincipalAppRole.fromMap((value as Map).cast<String, dynamic>()))),
      applicationTenantId: map['applicationTenantId'] == null ? null : pulumi.Output.create<String>(map['applicationTenantId'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      featureTags: map['featureTags'] == null ? null : pulumi.Output.create<List<ServicePrincipalFeatureTag>>(pulumi.Input.decodeList<ServicePrincipalFeatureTag>(map['featureTags'], (value) => ServicePrincipalFeatureTag.fromMap((value as Map).cast<String, dynamic>()))),
      features: map['features'] == null ? null : pulumi.Output.create<List<ServicePrincipalFeature>>(pulumi.Input.decodeList<ServicePrincipalFeature>(map['features'], (value) => ServicePrincipalFeature.fromMap((value as Map).cast<String, dynamic>()))),
      homepageUrl: map['homepageUrl'] == null ? null : pulumi.Output.create<String>(map['homepageUrl'] as String),
      loginUrl: map['loginUrl'] == null ? null : pulumi.Output.create<String>(map['loginUrl'] as String),
      logoutUrl: map['logoutUrl'] == null ? null : pulumi.Output.create<String>(map['logoutUrl'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      notificationEmailAddresses: map['notificationEmailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['notificationEmailAddresses'] as List).cast<String>()),
      oauth2PermissionScopeIds: map['oauth2PermissionScopeIds'] == null ? null : pulumi.Output.create<Map<String, String>>((map['oauth2PermissionScopeIds'] as Map).cast<String, String>()),
      oauth2PermissionScopes: map['oauth2PermissionScopes'] == null ? null : pulumi.Output.create<List<ServicePrincipalOauth2PermissionScope>>(pulumi.Input.decodeList<ServicePrincipalOauth2PermissionScope>(map['oauth2PermissionScopes'], (value) => ServicePrincipalOauth2PermissionScope.fromMap((value as Map).cast<String, dynamic>()))),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      owners: map['owners'] == null ? null : pulumi.Output.create<List<String>>((map['owners'] as List).cast<String>()),
      preferredSingleSignOnMode: map['preferredSingleSignOnMode'] == null ? null : pulumi.Output.create<String>(map['preferredSingleSignOnMode'] as String),
      redirectUris: map['redirectUris'] == null ? null : pulumi.Output.create<List<String>>((map['redirectUris'] as List).cast<String>()),
      samlMetadataUrl: map['samlMetadataUrl'] == null ? null : pulumi.Output.create<String>(map['samlMetadataUrl'] as String),
      samlSingleSignOn: map['samlSingleSignOn'] == null ? null : pulumi.Output.create<ServicePrincipalSamlSingleSignOn>(ServicePrincipalSamlSingleSignOn.fromMap((map['samlSingleSignOn'] as Map).cast<String, dynamic>())),
      servicePrincipalNames: map['servicePrincipalNames'] == null ? null : pulumi.Output.create<List<String>>((map['servicePrincipalNames'] as List).cast<String>()),
      signInAudience: map['signInAudience'] == null ? null : pulumi.Output.create<String>(map['signInAudience'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      useExisting: map['useExisting'] == null ? null : pulumi.Output.create<bool>(map['useExisting'] as bool),
    );
  }
}

