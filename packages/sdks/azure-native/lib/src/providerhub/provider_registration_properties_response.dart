// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule_response.dart';
import 'notification_response.dart';
import 'provider_registration_properties_private_resource_provider_configuration_response.dart';
import 'provider_registration_properties_provider_hub_metadata_response.dart';
import 'provider_registration_properties_subscription_lifecycle_notification_specifications_response.dart';
import 'resource_hydration_account_response.dart';
import 'resource_provider_authorization_response.dart';
import 'resource_provider_authorization_rules_response.dart';
import 'resource_provider_capabilities_response.dart';
import 'resource_provider_endpoint_response.dart';
import 'resource_provider_manifest_properties_dsts_configuration_response.dart';
import 'resource_provider_manifest_properties_features_rule_response.dart';
import 'resource_provider_manifest_properties_management_response.dart';
import 'resource_provider_manifest_properties_notification_settings_response.dart';
import 'resource_provider_manifest_properties_provider_authentication_response.dart';
import 'resource_provider_manifest_properties_request_header_options_response.dart';
import 'resource_provider_manifest_properties_resource_group_lock_option_during_move_response.dart';
import 'resource_provider_manifest_properties_response_options_response.dart';
import 'resource_provider_manifest_properties_template_deployment_options_response.dart';
import 'resource_provider_service_response.dart';
import 'token_auth_configuration_response.dart';

class ProviderRegistrationPropertiesResponse {
  /// The capabilities.
  final List<ResourceProviderCapabilitiesResponse>? capabilities;
  /// The cross tenant token validation.
  final String? crossTenantTokenValidation;
  /// Custom manifest version.
  final String? customManifestVersion;
  /// The dsts configuration.
  final ResourceProviderManifestPropertiesDstsConfigurationResponse? dstsConfiguration;
  /// The enable tenant linked notification.
  final bool? enableTenantLinkedNotification;
  /// The features rule.
  final ResourceProviderManifestPropertiesFeaturesRuleResponse? featuresRule;
  /// The global notification endpoints.
  final List<ResourceProviderEndpointResponse>? globalNotificationEndpoints;
  /// Legacy namespace.
  final String? legacyNamespace;
  /// Legacy registrations.
  final List<String>? legacyRegistrations;
  /// The linked notification rules.
  final List<FanoutLinkedNotificationRuleResponse>? linkedNotificationRules;
  /// The resource provider management.
  final ResourceProviderManifestPropertiesManagementResponse? management;
  /// Management groups global notification endpoints.
  final List<ResourceProviderEndpointResponse>? managementGroupGlobalNotificationEndpoints;
  /// The metadata.
  final dynamic metadata;
  /// The namespace.
  final String? namespace;
  /// Notification options.
  final String? notificationOptions;
  /// Notification settings.
  final ResourceProviderManifestPropertiesNotificationSettingsResponse? notificationSettings;
  /// The notifications.
  final List<NotificationResponse>? notifications;
  /// Optional features.
  final List<String>? optionalFeatures;
  /// The private resource provider configuration.
  final ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse? privateResourceProviderConfiguration;
  /// The provider authentication.
  final ResourceProviderManifestPropertiesProviderAuthenticationResponse? providerAuthentication;
  /// The provider authorizations.
  final List<ResourceProviderAuthorizationResponse>? providerAuthorizations;
  /// The provider hub metadata.
  final ProviderRegistrationPropertiesProviderHubMetadataResponse? providerHubMetadata;
  /// The provider type.
  final String? providerType;
  /// The provider version.
  final String? providerVersion;
  /// The provisioning state.
  final String provisioningState;
  /// The request header options.
  final ResourceProviderManifestPropertiesRequestHeaderOptionsResponse? requestHeaderOptions;
  /// The required features.
  final List<String>? requiredFeatures;
  /// Resource group lock option during move.
  final ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse? resourceGroupLockOptionDuringMove;
  /// resource hydration accounts
  final List<ResourceHydrationAccountResponse>? resourceHydrationAccounts;
  /// The resource provider authorization rules.
  final ResourceProviderAuthorizationRulesResponse? resourceProviderAuthorizationRules;
  /// Response options.
  final ResourceProviderManifestPropertiesResponseOptionsResponse? responseOptions;
  /// The service name.
  final String? serviceName;
  /// The services.
  final List<ResourceProviderServiceResponse>? services;
  /// The subscription lifecycle notification specifications.
  final ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse? subscriptionLifecycleNotificationSpecifications;
  /// The template deployment options.
  final ResourceProviderManifestPropertiesTemplateDeploymentOptionsResponse? templateDeploymentOptions;
  /// The token auth configuration.
  final TokenAuthConfigurationResponse? tokenAuthConfiguration;

  /// Creates a new [ProviderRegistrationPropertiesResponse].
  /// [capabilities] The capabilities.
  /// [crossTenantTokenValidation] The cross tenant token validation.
  /// [customManifestVersion] Custom manifest version.
  /// [dstsConfiguration] The dsts configuration.
  /// [enableTenantLinkedNotification] The enable tenant linked notification.
  /// [featuresRule] The features rule.
  /// [globalNotificationEndpoints] The global notification endpoints.
  /// [legacyNamespace] Legacy namespace.
  /// [legacyRegistrations] Legacy registrations.
  /// [linkedNotificationRules] The linked notification rules.
  /// [management] The resource provider management.
  /// [managementGroupGlobalNotificationEndpoints] Management groups global notification endpoints.
  /// [metadata] The metadata.
  /// [namespace] The namespace.
  /// [notificationOptions] Notification options.
  /// [notificationSettings] Notification settings.
  /// [notifications] The notifications.
  /// [optionalFeatures] Optional features.
  /// [privateResourceProviderConfiguration] The private resource provider configuration.
  /// [providerAuthentication] The provider authentication.
  /// [providerAuthorizations] The provider authorizations.
  /// [providerHubMetadata] The provider hub metadata.
  /// [providerType] The provider type.
  /// [providerVersion] The provider version.
  /// [provisioningState] The provisioning state.
  /// [requestHeaderOptions] The request header options.
  /// [requiredFeatures] The required features.
  /// [resourceGroupLockOptionDuringMove] Resource group lock option during move.
  /// [resourceHydrationAccounts] resource hydration accounts
  /// [resourceProviderAuthorizationRules] The resource provider authorization rules.
  /// [responseOptions] Response options.
  /// [serviceName] The service name.
  /// [services] The services.
  /// [subscriptionLifecycleNotificationSpecifications] The subscription lifecycle notification specifications.
  /// [templateDeploymentOptions] The template deployment options.
  /// [tokenAuthConfiguration] The token auth configuration.
  ProviderRegistrationPropertiesResponse({
    this.capabilities,
    this.crossTenantTokenValidation,
    this.customManifestVersion,
    this.dstsConfiguration,
    this.enableTenantLinkedNotification,
    this.featuresRule,
    this.globalNotificationEndpoints,
    this.legacyNamespace,
    this.legacyRegistrations,
    this.linkedNotificationRules,
    this.management,
    this.managementGroupGlobalNotificationEndpoints,
    this.metadata,
    this.namespace,
    this.notificationOptions,
    this.notificationSettings,
    this.notifications,
    this.optionalFeatures,
    this.privateResourceProviderConfiguration,
    this.providerAuthentication,
    this.providerAuthorizations,
    this.providerHubMetadata,
    this.providerType,
    this.providerVersion,
    required this.provisioningState,
    this.requestHeaderOptions,
    this.requiredFeatures,
    this.resourceGroupLockOptionDuringMove,
    this.resourceHydrationAccounts,
    this.resourceProviderAuthorizationRules,
    this.responseOptions,
    this.serviceName,
    this.services,
    this.subscriptionLifecycleNotificationSpecifications,
    this.templateDeploymentOptions,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?capabilities == null ? null : pulumi.Input.encodeList<ResourceProviderCapabilitiesResponse, Map<String, dynamic>>(capabilities!, (value) => value.toMap()),
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'customManifestVersion': ?customManifestVersion,
      'dstsConfiguration': ?dstsConfiguration == null ? null : dstsConfiguration!.toMap(),
      'enableTenantLinkedNotification': ?enableTenantLinkedNotification,
      'featuresRule': ?featuresRule == null ? null : featuresRule!.toMap(),
      'globalNotificationEndpoints': ?globalNotificationEndpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpointResponse, Map<String, dynamic>>(globalNotificationEndpoints!, (value) => value.toMap()),
      'legacyNamespace': ?legacyNamespace,
      'legacyRegistrations': ?legacyRegistrations,
      'linkedNotificationRules': ?linkedNotificationRules == null ? null : pulumi.Input.encodeList<FanoutLinkedNotificationRuleResponse, Map<String, dynamic>>(linkedNotificationRules!, (value) => value.toMap()),
      'management': ?management == null ? null : management!.toMap(),
      'managementGroupGlobalNotificationEndpoints': ?managementGroupGlobalNotificationEndpoints == null ? null : pulumi.Input.encodeList<ResourceProviderEndpointResponse, Map<String, dynamic>>(managementGroupGlobalNotificationEndpoints!, (value) => value.toMap()),
      'metadata': ?metadata,
      'namespace': ?namespace,
      'notificationOptions': ?notificationOptions,
      'notificationSettings': ?notificationSettings == null ? null : notificationSettings!.toMap(),
      'notifications': ?notifications == null ? null : pulumi.Input.encodeList<NotificationResponse, Map<String, dynamic>>(notifications!, (value) => value.toMap()),
      'optionalFeatures': ?optionalFeatures,
      'privateResourceProviderConfiguration': ?privateResourceProviderConfiguration == null ? null : privateResourceProviderConfiguration!.toMap(),
      'providerAuthentication': ?providerAuthentication == null ? null : providerAuthentication!.toMap(),
      'providerAuthorizations': ?providerAuthorizations == null ? null : pulumi.Input.encodeList<ResourceProviderAuthorizationResponse, Map<String, dynamic>>(providerAuthorizations!, (value) => value.toMap()),
      'providerHubMetadata': ?providerHubMetadata == null ? null : providerHubMetadata!.toMap(),
      'providerType': ?providerType,
      'providerVersion': ?providerVersion,
      'provisioningState': provisioningState,
      'requestHeaderOptions': ?requestHeaderOptions == null ? null : requestHeaderOptions!.toMap(),
      'requiredFeatures': ?requiredFeatures,
      'resourceGroupLockOptionDuringMove': ?resourceGroupLockOptionDuringMove == null ? null : resourceGroupLockOptionDuringMove!.toMap(),
      'resourceHydrationAccounts': ?resourceHydrationAccounts == null ? null : pulumi.Input.encodeList<ResourceHydrationAccountResponse, Map<String, dynamic>>(resourceHydrationAccounts!, (value) => value.toMap()),
      'resourceProviderAuthorizationRules': ?resourceProviderAuthorizationRules == null ? null : resourceProviderAuthorizationRules!.toMap(),
      'responseOptions': ?responseOptions == null ? null : responseOptions!.toMap(),
      'serviceName': ?serviceName,
      'services': ?services == null ? null : pulumi.Input.encodeList<ResourceProviderServiceResponse, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'subscriptionLifecycleNotificationSpecifications': ?subscriptionLifecycleNotificationSpecifications == null ? null : subscriptionLifecycleNotificationSpecifications!.toMap(),
      'templateDeploymentOptions': ?templateDeploymentOptions == null ? null : templateDeploymentOptions!.toMap(),
      'tokenAuthConfiguration': ?tokenAuthConfiguration == null ? null : tokenAuthConfiguration!.toMap(),
    };
  }

  factory ProviderRegistrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationPropertiesResponse(
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<ResourceProviderCapabilitiesResponse>(map['capabilities'], (value) => ResourceProviderCapabilitiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      crossTenantTokenValidation: map['crossTenantTokenValidation'] == null ? null : map['crossTenantTokenValidation'] as String,
      customManifestVersion: map['customManifestVersion'] == null ? null : map['customManifestVersion'] as String,
      dstsConfiguration: map['dstsConfiguration'] == null ? null : ResourceProviderManifestPropertiesDstsConfigurationResponse.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>()),
      enableTenantLinkedNotification: map['enableTenantLinkedNotification'] == null ? null : map['enableTenantLinkedNotification'] as bool,
      featuresRule: map['featuresRule'] == null ? null : ResourceProviderManifestPropertiesFeaturesRuleResponse.fromMap((map['featuresRule'] as Map).cast<String, dynamic>()),
      globalNotificationEndpoints: map['globalNotificationEndpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpointResponse>(map['globalNotificationEndpoints'], (value) => ResourceProviderEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      legacyNamespace: map['legacyNamespace'] == null ? null : map['legacyNamespace'] as String,
      legacyRegistrations: map['legacyRegistrations'] == null ? null : (map['legacyRegistrations'] as List).cast<String>(),
      linkedNotificationRules: map['linkedNotificationRules'] == null ? null : pulumi.Input.decodeList<FanoutLinkedNotificationRuleResponse>(map['linkedNotificationRules'], (value) => FanoutLinkedNotificationRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      management: map['management'] == null ? null : ResourceProviderManifestPropertiesManagementResponse.fromMap((map['management'] as Map).cast<String, dynamic>()),
      managementGroupGlobalNotificationEndpoints: map['managementGroupGlobalNotificationEndpoints'] == null ? null : pulumi.Input.decodeList<ResourceProviderEndpointResponse>(map['managementGroupGlobalNotificationEndpoints'], (value) => ResourceProviderEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      metadata: map['metadata'] == null ? null : map['metadata'],
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      notificationOptions: map['notificationOptions'] == null ? null : map['notificationOptions'] as String,
      notificationSettings: map['notificationSettings'] == null ? null : ResourceProviderManifestPropertiesNotificationSettingsResponse.fromMap((map['notificationSettings'] as Map).cast<String, dynamic>()),
      notifications: map['notifications'] == null ? null : pulumi.Input.decodeList<NotificationResponse>(map['notifications'], (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      optionalFeatures: map['optionalFeatures'] == null ? null : (map['optionalFeatures'] as List).cast<String>(),
      privateResourceProviderConfiguration: map['privateResourceProviderConfiguration'] == null ? null : ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse.fromMap((map['privateResourceProviderConfiguration'] as Map).cast<String, dynamic>()),
      providerAuthentication: map['providerAuthentication'] == null ? null : ResourceProviderManifestPropertiesProviderAuthenticationResponse.fromMap((map['providerAuthentication'] as Map).cast<String, dynamic>()),
      providerAuthorizations: map['providerAuthorizations'] == null ? null : pulumi.Input.decodeList<ResourceProviderAuthorizationResponse>(map['providerAuthorizations'], (value) => ResourceProviderAuthorizationResponse.fromMap((value as Map).cast<String, dynamic>())),
      providerHubMetadata: map['providerHubMetadata'] == null ? null : ProviderRegistrationPropertiesProviderHubMetadataResponse.fromMap((map['providerHubMetadata'] as Map).cast<String, dynamic>()),
      providerType: map['providerType'] == null ? null : map['providerType'] as String,
      providerVersion: map['providerVersion'] == null ? null : map['providerVersion'] as String,
      provisioningState: map['provisioningState'] as String,
      requestHeaderOptions: map['requestHeaderOptions'] == null ? null : ResourceProviderManifestPropertiesRequestHeaderOptionsResponse.fromMap((map['requestHeaderOptions'] as Map).cast<String, dynamic>()),
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
      resourceGroupLockOptionDuringMove: map['resourceGroupLockOptionDuringMove'] == null ? null : ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse.fromMap((map['resourceGroupLockOptionDuringMove'] as Map).cast<String, dynamic>()),
      resourceHydrationAccounts: map['resourceHydrationAccounts'] == null ? null : pulumi.Input.decodeList<ResourceHydrationAccountResponse>(map['resourceHydrationAccounts'], (value) => ResourceHydrationAccountResponse.fromMap((value as Map).cast<String, dynamic>())),
      resourceProviderAuthorizationRules: map['resourceProviderAuthorizationRules'] == null ? null : ResourceProviderAuthorizationRulesResponse.fromMap((map['resourceProviderAuthorizationRules'] as Map).cast<String, dynamic>()),
      responseOptions: map['responseOptions'] == null ? null : ResourceProviderManifestPropertiesResponseOptionsResponse.fromMap((map['responseOptions'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      services: map['services'] == null ? null : pulumi.Input.decodeList<ResourceProviderServiceResponse>(map['services'], (value) => ResourceProviderServiceResponse.fromMap((value as Map).cast<String, dynamic>())),
      subscriptionLifecycleNotificationSpecifications: map['subscriptionLifecycleNotificationSpecifications'] == null ? null : ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse.fromMap((map['subscriptionLifecycleNotificationSpecifications'] as Map).cast<String, dynamic>()),
      templateDeploymentOptions: map['templateDeploymentOptions'] == null ? null : ResourceProviderManifestPropertiesTemplateDeploymentOptionsResponse.fromMap((map['templateDeploymentOptions'] as Map).cast<String, dynamic>()),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : TokenAuthConfigurationResponse.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

