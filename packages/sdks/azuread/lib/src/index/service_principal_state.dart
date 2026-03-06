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
  /// &gt; **Features and Tags** Features are configured for a service principal using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for a service principal at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Any tags configured for the linked application will propagate to this service principal.
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
  /// &gt; **Ownership of Service Principals** It's recommended to always specify one or more service principal owners, including the principal being used to execute Terraform, such as in the example above.
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
  /// &gt; **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of service principals. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values set for the linked application will also propagate to this service principal.
  final pulumi.Input<List<String>>? tags;
  /// Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions. Possible values are `User` or `Admin`.
  final pulumi.Input<String>? type;
  /// When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ///
  /// &gt; **Caveats of `use_existing`** Enabling this behaviour is useful for managing existing service principals that may already be installed in your tenant for Microsoft-published APIs, as it allows you to make changes where permitted, and then also reference them in your Terraform configuration. However, the behaviour of delete operations is also affected - when `use_existing` is `true`, Terraform will still attempt to delete the service principal on destroy, although it will not raise an error if the deletion fails (as it often the case for first-party Microsoft applications).
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
  const ServicePrincipalState({
    this.accountEnabled,
    this.alternativeNames,
    this.appRoleAssignmentRequired,
    this.appRoleIds,
    this.appRoles,
    this.applicationTenantId,
    this.clientId,
    this.description,
    this.displayName,
    this.featureTags,
    this.features,
    this.homepageUrl,
    this.loginUrl,
    this.logoutUrl,
    this.notes,
    this.notificationEmailAddresses,
    this.oauth2PermissionScopeIds,
    this.oauth2PermissionScopes,
    this.objectId,
    this.owners,
    this.preferredSingleSignOnMode,
    this.redirectUris,
    this.samlMetadataUrl,
    this.samlSingleSignOn,
    this.servicePrincipalNames,
    this.signInAudience,
    this.tags,
    this.type,
    this.useExisting,
  });

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
      accountEnabled: (() { final guardedValue = map['accountEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alternativeNames: (() { final guardedValue = map['alternativeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      appRoleAssignmentRequired: (() { final guardedValue = map['appRoleAssignmentRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appRoleIds: (() { final guardedValue = map['appRoleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      appRoles: (() { final guardedValue = map['appRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePrincipalAppRole>(guardedValue, (value) => ServicePrincipalAppRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationTenantId: (() { final guardedValue = map['applicationTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureTags: (() { final guardedValue = map['featureTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePrincipalFeatureTag>(guardedValue, (value) => ServicePrincipalFeatureTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePrincipalFeature>(guardedValue, (value) => ServicePrincipalFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      homepageUrl: (() { final guardedValue = map['homepageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loginUrl: (() { final guardedValue = map['loginUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logoutUrl: (() { final guardedValue = map['logoutUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEmailAddresses: (() { final guardedValue = map['notificationEmailAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      oauth2PermissionScopeIds: (() { final guardedValue = map['oauth2PermissionScopeIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      oauth2PermissionScopes: (() { final guardedValue = map['oauth2PermissionScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePrincipalOauth2PermissionScope>(guardedValue, (value) => ServicePrincipalOauth2PermissionScope.fromMap((value as Map).cast<String, dynamic>()))); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preferredSingleSignOnMode: (() { final guardedValue = map['preferredSingleSignOnMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUris: (() { final guardedValue = map['redirectUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      samlMetadataUrl: (() { final guardedValue = map['samlMetadataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      samlSingleSignOn: (() { final guardedValue = map['samlSingleSignOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServicePrincipalSamlSingleSignOn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipalNames: (() { final guardedValue = map['servicePrincipalNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signInAudience: (() { final guardedValue = map['signInAudience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useExisting: (() { final guardedValue = map['useExisting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

