// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fanout_linked_notification_rule.dart';
import 'notification.dart';
import 'provider_registration_properties_private_resource_provider_configuration.dart';
import 'provider_registration_properties_provider_hub_metadata.dart';
import 'provider_registration_properties_subscription_lifecycle_notification_specifications.dart';
import 'resource_hydration_account.dart';
import 'resource_provider_authorization.dart';
import 'resource_provider_authorization_rules.dart';
import 'resource_provider_capabilities.dart';
import 'resource_provider_endpoint.dart';
import 'resource_provider_manifest_properties_dsts_configuration.dart';
import 'resource_provider_manifest_properties_features_rule.dart';
import 'resource_provider_manifest_properties_management.dart';
import 'resource_provider_manifest_properties_notification_settings.dart';
import 'resource_provider_manifest_properties_provider_authentication.dart';
import 'resource_provider_manifest_properties_request_header_options.dart';
import 'resource_provider_manifest_properties_resource_group_lock_option_during_move.dart';
import 'resource_provider_manifest_properties_response_options.dart';
import 'resource_provider_manifest_properties_template_deployment_options.dart';
import 'resource_provider_service.dart';
import 'token_auth_configuration.dart';

class ProviderRegistrationProperties {
  /// The capabilities.
  final pulumi.Input<List<ResourceProviderCapabilities>>? capabilities;
  /// The cross tenant token validation.
  final pulumi.Input<String>? crossTenantTokenValidation;
  /// Custom manifest version.
  final pulumi.Input<String>? customManifestVersion;
  /// The dsts configuration.
  final pulumi.Input<ResourceProviderManifestPropertiesDstsConfiguration>? dstsConfiguration;
  /// The enable tenant linked notification.
  final pulumi.Input<bool>? enableTenantLinkedNotification;
  /// The features rule.
  final pulumi.Input<ResourceProviderManifestPropertiesFeaturesRule>? featuresRule;
  /// The global notification endpoints.
  final pulumi.Input<List<ResourceProviderEndpoint>>? globalNotificationEndpoints;
  /// Legacy namespace.
  final pulumi.Input<String>? legacyNamespace;
  /// Legacy registrations.
  final pulumi.Input<List<String>>? legacyRegistrations;
  /// The linked notification rules.
  final pulumi.Input<List<FanoutLinkedNotificationRule>>? linkedNotificationRules;
  /// The resource provider management.
  final pulumi.Input<ResourceProviderManifestPropertiesManagement>? management;
  /// Management groups global notification endpoints.
  final pulumi.Input<List<ResourceProviderEndpoint>>? managementGroupGlobalNotificationEndpoints;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The namespace.
  final pulumi.Input<String>? namespace;
  /// Notification options.
  final pulumi.Input<String>? notificationOptions;
  /// Notification settings.
  final pulumi.Input<ResourceProviderManifestPropertiesNotificationSettings>? notificationSettings;
  /// The notifications.
  final pulumi.Input<List<Notification>>? notifications;
  /// Optional features.
  final pulumi.Input<List<String>>? optionalFeatures;
  /// The private resource provider configuration.
  final pulumi.Input<ProviderRegistrationPropertiesPrivateResourceProviderConfiguration>? privateResourceProviderConfiguration;
  /// The provider authentication.
  final pulumi.Input<ResourceProviderManifestPropertiesProviderAuthentication>? providerAuthentication;
  /// The provider authorizations.
  final pulumi.Input<List<ResourceProviderAuthorization>>? providerAuthorizations;
  /// The provider hub metadata.
  final pulumi.Input<ProviderRegistrationPropertiesProviderHubMetadata>? providerHubMetadata;
  /// The provider type.
  final pulumi.Input<String>? providerType;
  /// The provider version.
  final pulumi.Input<String>? providerVersion;
  /// The request header options.
  final pulumi.Input<ResourceProviderManifestPropertiesRequestHeaderOptions>? requestHeaderOptions;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// Resource group lock option during move.
  final pulumi.Input<ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove>? resourceGroupLockOptionDuringMove;
  /// resource hydration accounts
  final pulumi.Input<List<ResourceHydrationAccount>>? resourceHydrationAccounts;
  /// The resource provider authorization rules.
  final pulumi.Input<ResourceProviderAuthorizationRules>? resourceProviderAuthorizationRules;
  /// Response options.
  final pulumi.Input<ResourceProviderManifestPropertiesResponseOptions>? responseOptions;
  /// The service name.
  final pulumi.Input<String>? serviceName;
  /// The services.
  final pulumi.Input<List<ResourceProviderService>>? services;
  /// The subscription lifecycle notification specifications.
  final pulumi.Input<ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications>? subscriptionLifecycleNotificationSpecifications;
  /// The template deployment options.
  final pulumi.Input<ResourceProviderManifestPropertiesTemplateDeploymentOptions>? templateDeploymentOptions;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfiguration>? tokenAuthConfiguration;

  /// Creates a new [ProviderRegistrationProperties].
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
  ProviderRegistrationProperties({
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
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderCapabilities>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<ResourceProviderCapabilities, Map<String, dynamic>>(value, (value) => value.toMap())),
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'customManifestVersion': ?customManifestVersion,
      'dstsConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesDstsConfiguration, Map<String, dynamic>>(dstsConfiguration, (value) => value.toMap()),
      'enableTenantLinkedNotification': ?enableTenantLinkedNotification,
      'featuresRule': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesFeaturesRule, Map<String, dynamic>>(featuresRule, (value) => value.toMap()),
      'globalNotificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderEndpoint>, List<Map<String, dynamic>>>(globalNotificationEndpoints, (value) => pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'legacyNamespace': ?legacyNamespace,
      'legacyRegistrations': ?legacyRegistrations,
      'linkedNotificationRules': ?pulumi.Input.mapOptionalInputValue<List<FanoutLinkedNotificationRule>, List<Map<String, dynamic>>>(linkedNotificationRules, (value) => pulumi.Input.encodeList<FanoutLinkedNotificationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'management': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'managementGroupGlobalNotificationEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderEndpoint>, List<Map<String, dynamic>>>(managementGroupGlobalNotificationEndpoints, (value) => pulumi.Input.encodeList<ResourceProviderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadata': ?metadata,
      'namespace': ?namespace,
      'notificationOptions': ?notificationOptions,
      'notificationSettings': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesNotificationSettings, Map<String, dynamic>>(notificationSettings, (value) => value.toMap()),
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<Notification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<Notification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'optionalFeatures': ?optionalFeatures,
      'privateResourceProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationPropertiesPrivateResourceProviderConfiguration, Map<String, dynamic>>(privateResourceProviderConfiguration, (value) => value.toMap()),
      'providerAuthentication': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesProviderAuthentication, Map<String, dynamic>>(providerAuthentication, (value) => value.toMap()),
      'providerAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderAuthorization>, List<Map<String, dynamic>>>(providerAuthorizations, (value) => pulumi.Input.encodeList<ResourceProviderAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'providerHubMetadata': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationPropertiesProviderHubMetadata, Map<String, dynamic>>(providerHubMetadata, (value) => value.toMap()),
      'providerType': ?providerType,
      'providerVersion': ?providerVersion,
      'requestHeaderOptions': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesRequestHeaderOptions, Map<String, dynamic>>(requestHeaderOptions, (value) => value.toMap()),
      'requiredFeatures': ?requiredFeatures,
      'resourceGroupLockOptionDuringMove': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove, Map<String, dynamic>>(resourceGroupLockOptionDuringMove, (value) => value.toMap()),
      'resourceHydrationAccounts': ?pulumi.Input.mapOptionalInputValue<List<ResourceHydrationAccount>, List<Map<String, dynamic>>>(resourceHydrationAccounts, (value) => pulumi.Input.encodeList<ResourceHydrationAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceProviderAuthorizationRules': ?pulumi.Input.mapOptionalInputValue<ResourceProviderAuthorizationRules, Map<String, dynamic>>(resourceProviderAuthorizationRules, (value) => value.toMap()),
      'responseOptions': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesResponseOptions, Map<String, dynamic>>(responseOptions, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'services': ?pulumi.Input.mapOptionalInputValue<List<ResourceProviderService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<ResourceProviderService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionLifecycleNotificationSpecifications': ?pulumi.Input.mapOptionalInputValue<ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications, Map<String, dynamic>>(subscriptionLifecycleNotificationSpecifications, (value) => value.toMap()),
      'templateDeploymentOptions': ?pulumi.Input.mapOptionalInputValue<ResourceProviderManifestPropertiesTemplateDeploymentOptions, Map<String, dynamic>>(templateDeploymentOptions, (value) => value.toMap()),
      'tokenAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<TokenAuthConfiguration, Map<String, dynamic>>(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory ProviderRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return ProviderRegistrationProperties(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderCapabilities>(guardedValue, (value) => ResourceProviderCapabilities.fromMap((value as Map).cast<String, dynamic>()))); })(),
      crossTenantTokenValidation: (() { final guardedValue = map['crossTenantTokenValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customManifestVersion: (() { final guardedValue = map['customManifestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dstsConfiguration: (() { final guardedValue = map['dstsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesDstsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableTenantLinkedNotification: (() { final guardedValue = map['enableTenantLinkedNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      featuresRule: (() { final guardedValue = map['featuresRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesFeaturesRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      globalNotificationEndpoints: (() { final guardedValue = map['globalNotificationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderEndpoint>(guardedValue, (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      legacyNamespace: (() { final guardedValue = map['legacyNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legacyRegistrations: (() { final guardedValue = map['legacyRegistrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      linkedNotificationRules: (() { final guardedValue = map['linkedNotificationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FanoutLinkedNotificationRule>(guardedValue, (value) => FanoutLinkedNotificationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementGroupGlobalNotificationEndpoints: (() { final guardedValue = map['managementGroupGlobalNotificationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderEndpoint>(guardedValue, (value) => ResourceProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationOptions: (() { final guardedValue = map['notificationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationSettings: (() { final guardedValue = map['notificationSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesNotificationSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Notification>(guardedValue, (value) => Notification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      optionalFeatures: (() { final guardedValue = map['optionalFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateResourceProviderConfiguration: (() { final guardedValue = map['privateResourceProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderRegistrationPropertiesPrivateResourceProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerAuthentication: (() { final guardedValue = map['providerAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesProviderAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerAuthorizations: (() { final guardedValue = map['providerAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderAuthorization>(guardedValue, (value) => ResourceProviderAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      providerHubMetadata: (() { final guardedValue = map['providerHubMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderRegistrationPropertiesProviderHubMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      providerType: (() { final guardedValue = map['providerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerVersion: (() { final guardedValue = map['providerVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaderOptions: (() { final guardedValue = map['requestHeaderOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesRequestHeaderOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupLockOptionDuringMove: (() { final guardedValue = map['resourceGroupLockOptionDuringMove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMove.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceHydrationAccounts: (() { final guardedValue = map['resourceHydrationAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceHydrationAccount>(guardedValue, (value) => ResourceHydrationAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceProviderAuthorizationRules: (() { final guardedValue = map['resourceProviderAuthorizationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderAuthorizationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseOptions: (() { final guardedValue = map['responseOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceProviderService>(guardedValue, (value) => ResourceProviderService.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subscriptionLifecycleNotificationSpecifications: (() { final guardedValue = map['subscriptionLifecycleNotificationSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDeploymentOptions: (() { final guardedValue = map['templateDeploymentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderManifestPropertiesTemplateDeploymentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenAuthConfiguration: (() { final guardedValue = map['tokenAuthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenAuthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

