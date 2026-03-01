// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_feature.dart';
import 'service_principal_feature_tag.dart';
import 'service_principal_saml_single_sign_on.dart';

/// {@template pulumi_index_service_principal_service_principal_args_doc}
/// The set of arguments for ServicePrincipal.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_service_principal_args_doc}
class ServicePrincipalArgs {
  /// Whether or not the service principal account is enabled. Defaults to `true`.
  final pulumi.Input<bool>? accountEnabled;
  /// A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  final pulumi.Input<List<String>>? alternativeNames;
  /// Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to `false`.
  final pulumi.Input<bool>? appRoleAssignmentRequired;
  /// The client ID of the application for which to create a service principal.
  final pulumi.Input<String> clientId;
  /// A description of the service principal provided for internal end-users.
  final pulumi.Input<String>? description;
  /// A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  ///
  /// > **Features and Tags** Features are configured for a service principal using tags, and are provided as a shortcut to set the corresponding magic tag value for each feature. You cannot configure `feature_tags` and `tags` for a service principal at the same time, so if you need to assign additional custom tags it's recommended to use the `tags` property instead. Any tags configured for the linked application will propagate to this service principal.
  final pulumi.Input<List<ServicePrincipalFeatureTag>>? featureTags;
  /// Block of features to configure for this service principal using tags
  final pulumi.Input<List<ServicePrincipalFeature>>? features;
  /// The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on.
  final pulumi.Input<String>? loginUrl;
  /// A free text field to capture information about the service principal, typically used for operational purposes.
  final pulumi.Input<String>? notes;
  /// A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  final pulumi.Input<List<String>>? notificationEmailAddresses;
  /// A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned.
  ///
  /// > **Ownership of Service Principals** It's recommended to always specify one or more service principal owners, including the principal being used to execute Terraform, such as in the example above.
  final pulumi.Input<List<String>>? owners;
  /// The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset.
  final pulumi.Input<String>? preferredSingleSignOnMode;
  /// A `saml_single_sign_on` block as documented below.
  final pulumi.Input<ServicePrincipalSamlSingleSignOn>? samlSingleSignOn;
  /// A set of tags to apply to the service principal for configuring specific behaviours of the service principal. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  ///
  /// > **Tags and Features** Azure Active Directory uses special tag values to configure the behavior of service principals. These can be specified using either the `tags` property or with the `feature_tags` block. If you need to set any custom tag values not supported by the `feature_tags` block, it's recommended to use the `tags` property. Tag values set for the linked application will also propagate to this service principal.
  final pulumi.Input<List<String>>? tags;
  /// When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ///
  /// > **Caveats of `use_existing`** Enabling this behaviour is useful for managing existing service principals that may already be installed in your tenant for Microsoft-published APIs, as it allows you to make changes where permitted, and then also reference them in your Terraform configuration. However, the behaviour of delete operations is also affected - when `use_existing` is `true`, Terraform will still attempt to delete the service principal on destroy, although it will not raise an error if the deletion fails (as it often the case for first-party Microsoft applications).
  final pulumi.Input<bool>? useExisting;

  /// Creates a new [ServicePrincipalArgs].
  /// [accountEnabled] Whether or not the service principal account is enabled. Defaults to `true`.
  /// [alternativeNames] A set of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities.
  /// [appRoleAssignmentRequired] Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application. Defaults to `false`.
  /// [clientId] The client ID of the application for which to create a service principal.
  /// [description] A description of the service principal provided for internal end-users.
  /// [featureTags] A `feature_tags` block as described below. Cannot be used together with the `tags` property.
  /// [features] Block of features to configure for this service principal using tags
  /// [loginUrl] The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on.
  /// [notes] A free text field to capture information about the service principal, typically used for operational purposes.
  /// [notificationEmailAddresses] A set of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications.
  /// [owners] A set of object IDs of principals that will be granted ownership of the service principal. Supported object types are users or service principals. By default, no owners are assigned.
  /// [preferredSingleSignOnMode] The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps. Supported values are `oidc`, `password`, `saml` or `notSupported`. Omit this property or specify a blank string to unset.
  /// [samlSingleSignOn] A `saml_single_sign_on` block as documented below.
  /// [tags] A set of tags to apply to the service principal for configuring specific behaviours of the service principal. Note that these are not provided for use by practitioners. Cannot be used together with the `feature_tags` block.
  /// [useExisting] When true, any existing service principal linked to the same application will be automatically imported. When false, an import error will be raised for any pre-existing service principal.
  ServicePrincipalArgs({
    pulumi.Output<bool>? accountEnabled,
    pulumi.Output<List<String>>? alternativeNames,
    pulumi.Output<bool>? appRoleAssignmentRequired,
    required pulumi.Output<String> clientId,
    pulumi.Output<String>? description,
    pulumi.Output<List<ServicePrincipalFeatureTag>>? featureTags,
    pulumi.Output<List<ServicePrincipalFeature>>? features,
    pulumi.Output<String>? loginUrl,
    pulumi.Output<String>? notes,
    pulumi.Output<List<String>>? notificationEmailAddresses,
    pulumi.Output<List<String>>? owners,
    pulumi.Output<String>? preferredSingleSignOnMode,
    pulumi.Output<ServicePrincipalSamlSingleSignOn>? samlSingleSignOn,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<bool>? useExisting,
  }) :
      accountEnabled = pulumi.Input.asOptionalInput<bool>(accountEnabled),
      alternativeNames = pulumi.Input.asOptionalInput<List<String>>(alternativeNames),
      appRoleAssignmentRequired = pulumi.Input.asOptionalInput<bool>(appRoleAssignmentRequired),
      clientId = pulumi.Input.asInput<String>(clientId),
      description = pulumi.Input.asOptionalInput<String>(description),
      featureTags = pulumi.Input.asOptionalInput<List<ServicePrincipalFeatureTag>>(featureTags),
      features = pulumi.Input.asOptionalInput<List<ServicePrincipalFeature>>(features),
      loginUrl = pulumi.Input.asOptionalInput<String>(loginUrl),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      notificationEmailAddresses = pulumi.Input.asOptionalInput<List<String>>(notificationEmailAddresses),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      preferredSingleSignOnMode = pulumi.Input.asOptionalInput<String>(preferredSingleSignOnMode),
      samlSingleSignOn = pulumi.Input.asOptionalInput<ServicePrincipalSamlSingleSignOn>(samlSingleSignOn),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      useExisting = pulumi.Input.asOptionalInput<bool>(useExisting);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': ?accountEnabled,
      'alternativeNames': ?alternativeNames,
      'appRoleAssignmentRequired': ?appRoleAssignmentRequired,
      'clientId': clientId,
      'description': ?description,
      'featureTags': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalFeatureTag>, List<Map<String, dynamic>>>(featureTags, (value) => pulumi.Input.encodeList<ServicePrincipalFeatureTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?pulumi.Input.mapOptionalInputValue<List<ServicePrincipalFeature>, List<Map<String, dynamic>>>(features, (value) => pulumi.Input.encodeList<ServicePrincipalFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loginUrl': ?loginUrl,
      'notes': ?notes,
      'notificationEmailAddresses': ?notificationEmailAddresses,
      'owners': ?owners,
      'preferredSingleSignOnMode': ?preferredSingleSignOnMode,
      'samlSingleSignOn': ?pulumi.Input.mapOptionalInputValue<ServicePrincipalSamlSingleSignOn, Map<String, dynamic>>(samlSingleSignOn, (value) => value.toMap()),
      'tags': ?tags,
      'useExisting': ?useExisting,
    };
  }

  factory ServicePrincipalArgs.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalArgs(
      accountEnabled: map['accountEnabled'] == null ? null : pulumi.Output.create<bool>(map['accountEnabled'] as bool),
      alternativeNames: map['alternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['alternativeNames'] as List).cast<String>()),
      appRoleAssignmentRequired: map['appRoleAssignmentRequired'] == null ? null : pulumi.Output.create<bool>(map['appRoleAssignmentRequired'] as bool),
      clientId: pulumi.Output.create<String>(map['clientId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      featureTags: map['featureTags'] == null ? null : pulumi.Output.create<List<ServicePrincipalFeatureTag>>(pulumi.Input.decodeList<ServicePrincipalFeatureTag>(map['featureTags'], (value) => ServicePrincipalFeatureTag.fromMap((value as Map).cast<String, dynamic>()))),
      features: map['features'] == null ? null : pulumi.Output.create<List<ServicePrincipalFeature>>(pulumi.Input.decodeList<ServicePrincipalFeature>(map['features'], (value) => ServicePrincipalFeature.fromMap((value as Map).cast<String, dynamic>()))),
      loginUrl: map['loginUrl'] == null ? null : pulumi.Output.create<String>(map['loginUrl'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      notificationEmailAddresses: map['notificationEmailAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['notificationEmailAddresses'] as List).cast<String>()),
      owners: map['owners'] == null ? null : pulumi.Output.create<List<String>>((map['owners'] as List).cast<String>()),
      preferredSingleSignOnMode: map['preferredSingleSignOnMode'] == null ? null : pulumi.Output.create<String>(map['preferredSingleSignOnMode'] as String),
      samlSingleSignOn: map['samlSingleSignOn'] == null ? null : pulumi.Output.create<ServicePrincipalSamlSingleSignOn>(ServicePrincipalSamlSingleSignOn.fromMap((map['samlSingleSignOn'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      useExisting: map['useExisting'] == null ? null : pulumi.Output.create<bool>(map['useExisting'] as bool),
    );
  }
}

