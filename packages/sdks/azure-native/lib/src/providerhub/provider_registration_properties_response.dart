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
  final pulumi.Input<List<ResourceProviderCapabilitiesResponse>>? capabilities;

  /// The cross tenant token validation.
  final pulumi.Input<String>? crossTenantTokenValidation;

  /// Custom manifest version.
  final pulumi.Input<String>? customManifestVersion;

  /// The dsts configuration.
  final pulumi.Input<
    ResourceProviderManifestPropertiesDstsConfigurationResponse
  >?
  dstsConfiguration;

  /// The enable tenant linked notification.
  final pulumi.Input<bool>? enableTenantLinkedNotification;

  /// The features rule.
  final pulumi.Input<ResourceProviderManifestPropertiesFeaturesRuleResponse>?
  featuresRule;

  /// The global notification endpoints.
  final pulumi.Input<List<ResourceProviderEndpointResponse>>?
  globalNotificationEndpoints;

  /// Legacy namespace.
  final pulumi.Input<String>? legacyNamespace;

  /// Legacy registrations.
  final pulumi.Input<List<String>>? legacyRegistrations;

  /// The linked notification rules.
  final pulumi.Input<List<FanoutLinkedNotificationRuleResponse>>?
  linkedNotificationRules;

  /// The resource provider management.
  final pulumi.Input<ResourceProviderManifestPropertiesManagementResponse>?
  management;

  /// Management groups global notification endpoints.
  final pulumi.Input<List<ResourceProviderEndpointResponse>>?
  managementGroupGlobalNotificationEndpoints;

  /// The metadata.
  final pulumi.Input<dynamic>? metadata;

  /// The namespace.
  final pulumi.Input<String>? namespace;

  /// Notification options.
  final pulumi.Input<String>? notificationOptions;

  /// Notification settings.
  final pulumi.Input<
    ResourceProviderManifestPropertiesNotificationSettingsResponse
  >?
  notificationSettings;

  /// The notifications.
  final pulumi.Input<List<NotificationResponse>>? notifications;

  /// Optional features.
  final pulumi.Input<List<String>>? optionalFeatures;

  /// The private resource provider configuration.
  final pulumi.Input<
    ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse
  >?
  privateResourceProviderConfiguration;

  /// The provider authentication.
  final pulumi.Input<
    ResourceProviderManifestPropertiesProviderAuthenticationResponse
  >?
  providerAuthentication;

  /// The provider authorizations.
  final pulumi.Input<List<ResourceProviderAuthorizationResponse>>?
  providerAuthorizations;

  /// The provider hub metadata.
  final pulumi.Input<ProviderRegistrationPropertiesProviderHubMetadataResponse>?
  providerHubMetadata;

  /// The provider type.
  final pulumi.Input<String>? providerType;

  /// The provider version.
  final pulumi.Input<String>? providerVersion;

  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// The request header options.
  final pulumi.Input<
    ResourceProviderManifestPropertiesRequestHeaderOptionsResponse
  >?
  requestHeaderOptions;

  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Resource group lock option during move.
  final pulumi.Input<
    ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse
  >?
  resourceGroupLockOptionDuringMove;

  /// resource hydration accounts
  final pulumi.Input<List<ResourceHydrationAccountResponse>>?
  resourceHydrationAccounts;

  /// The resource provider authorization rules.
  final pulumi.Input<ResourceProviderAuthorizationRulesResponse>?
  resourceProviderAuthorizationRules;

  /// Response options.
  final pulumi.Input<ResourceProviderManifestPropertiesResponseOptionsResponse>?
  responseOptions;

  /// The service name.
  final pulumi.Input<String>? serviceName;

  /// The services.
  final pulumi.Input<List<ResourceProviderServiceResponse>>? services;

  /// The subscription lifecycle notification specifications.
  final pulumi.Input<
    ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse
  >?
  subscriptionLifecycleNotificationSpecifications;

  /// The template deployment options.
  final pulumi.Input<
    ResourceProviderManifestPropertiesTemplateDeploymentOptionsResponse
  >?
  templateDeploymentOptions;

  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfigurationResponse>? tokenAuthConfiguration;

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
      'capabilities':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderCapabilitiesResponse>,
            List<Map<String, dynamic>>
          >(
            capabilities,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderCapabilitiesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'customManifestVersion': ?customManifestVersion,
      'dstsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesDstsConfigurationResponse,
            Map<String, dynamic>
          >(dstsConfiguration, (value) => value.toMap()),
      'enableTenantLinkedNotification': ?enableTenantLinkedNotification,
      'featuresRule':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesFeaturesRuleResponse,
            Map<String, dynamic>
          >(featuresRule, (value) => value.toMap()),
      'globalNotificationEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderEndpointResponse>,
            List<Map<String, dynamic>>
          >(
            globalNotificationEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderEndpointResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'legacyNamespace': ?legacyNamespace,
      'legacyRegistrations': ?legacyRegistrations,
      'linkedNotificationRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<FanoutLinkedNotificationRuleResponse>,
            List<Map<String, dynamic>>
          >(
            linkedNotificationRules,
            (value) =>
                pulumi.Input.encodeList<
                  FanoutLinkedNotificationRuleResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'management':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesManagementResponse,
            Map<String, dynamic>
          >(management, (value) => value.toMap()),
      'managementGroupGlobalNotificationEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderEndpointResponse>,
            List<Map<String, dynamic>>
          >(
            managementGroupGlobalNotificationEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderEndpointResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metadata': ?metadata,
      'namespace': ?namespace,
      'notificationOptions': ?notificationOptions,
      'notificationSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesNotificationSettingsResponse,
            Map<String, dynamic>
          >(notificationSettings, (value) => value.toMap()),
      'notifications':
          ?pulumi.Input.mapOptionalInputValue<
            List<NotificationResponse>,
            List<Map<String, dynamic>>
          >(
            notifications,
            (value) =>
                pulumi.Input.encodeList<
                  NotificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'optionalFeatures': ?optionalFeatures,
      'privateResourceProviderConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse,
            Map<String, dynamic>
          >(privateResourceProviderConfiguration, (value) => value.toMap()),
      'providerAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesProviderAuthenticationResponse,
            Map<String, dynamic>
          >(providerAuthentication, (value) => value.toMap()),
      'providerAuthorizations':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderAuthorizationResponse>,
            List<Map<String, dynamic>>
          >(
            providerAuthorizations,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderAuthorizationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'providerHubMetadata':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderRegistrationPropertiesProviderHubMetadataResponse,
            Map<String, dynamic>
          >(providerHubMetadata, (value) => value.toMap()),
      'providerType': ?providerType,
      'providerVersion': ?providerVersion,
      'provisioningState': provisioningState,
      'requestHeaderOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesRequestHeaderOptionsResponse,
            Map<String, dynamic>
          >(requestHeaderOptions, (value) => value.toMap()),
      'requiredFeatures': ?requiredFeatures,
      'resourceGroupLockOptionDuringMove':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse,
            Map<String, dynamic>
          >(resourceGroupLockOptionDuringMove, (value) => value.toMap()),
      'resourceHydrationAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceHydrationAccountResponse>,
            List<Map<String, dynamic>>
          >(
            resourceHydrationAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceHydrationAccountResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceProviderAuthorizationRules':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderAuthorizationRulesResponse,
            Map<String, dynamic>
          >(resourceProviderAuthorizationRules, (value) => value.toMap()),
      'responseOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesResponseOptionsResponse,
            Map<String, dynamic>
          >(responseOptions, (value) => value.toMap()),
      'serviceName': ?serviceName,
      'services':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourceProviderServiceResponse>,
            List<Map<String, dynamic>>
          >(
            services,
            (value) =>
                pulumi.Input.encodeList<
                  ResourceProviderServiceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'subscriptionLifecycleNotificationSpecifications':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse,
            Map<String, dynamic>
          >(
            subscriptionLifecycleNotificationSpecifications,
            (value) => value.toMap(),
          ),
      'templateDeploymentOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ResourceProviderManifestPropertiesTemplateDeploymentOptionsResponse,
            Map<String, dynamic>
          >(templateDeploymentOptions, (value) => value.toMap()),
      'tokenAuthConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            TokenAuthConfigurationResponse,
            Map<String, dynamic>
          >(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory ProviderRegistrationPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProviderRegistrationPropertiesResponse(
      capabilities: (() {
        final guardedValue = map['capabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderCapabilitiesResponse>(
            guardedValue,
            (value) => ResourceProviderCapabilitiesResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      crossTenantTokenValidation: (() {
        final guardedValue = map['crossTenantTokenValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customManifestVersion: (() {
        final guardedValue = map['customManifestVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dstsConfiguration: (() {
        final guardedValue = map['dstsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesDstsConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableTenantLinkedNotification: (() {
        final guardedValue = map['enableTenantLinkedNotification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      featuresRule: (() {
        final guardedValue = map['featuresRule'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesFeaturesRuleResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      globalNotificationEndpoints: (() {
        final guardedValue = map['globalNotificationEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderEndpointResponse>(
            guardedValue,
            (value) => ResourceProviderEndpointResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      legacyNamespace: (() {
        final guardedValue = map['legacyNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      legacyRegistrations: (() {
        final guardedValue = map['legacyRegistrations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      linkedNotificationRules: (() {
        final guardedValue = map['linkedNotificationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FanoutLinkedNotificationRuleResponse>(
            guardedValue,
            (value) => FanoutLinkedNotificationRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      management: (() {
        final guardedValue = map['management'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesManagementResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managementGroupGlobalNotificationEndpoints: (() {
        final guardedValue = map['managementGroupGlobalNotificationEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderEndpointResponse>(
            guardedValue,
            (value) => ResourceProviderEndpointResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationOptions: (() {
        final guardedValue = map['notificationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notificationSettings: (() {
        final guardedValue = map['notificationSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesNotificationSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      notifications: (() {
        final guardedValue = map['notifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NotificationResponse>(
            guardedValue,
            (value) => NotificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      optionalFeatures: (() {
        final guardedValue = map['optionalFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      privateResourceProviderConfiguration: (() {
        final guardedValue = map['privateResourceProviderConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderRegistrationPropertiesPrivateResourceProviderConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      providerAuthentication: (() {
        final guardedValue = map['providerAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesProviderAuthenticationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      providerAuthorizations: (() {
        final guardedValue = map['providerAuthorizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderAuthorizationResponse>(
            guardedValue,
            (value) => ResourceProviderAuthorizationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      providerHubMetadata: (() {
        final guardedValue = map['providerHubMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderRegistrationPropertiesProviderHubMetadataResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      providerType: (() {
        final guardedValue = map['providerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerVersion: (() {
        final guardedValue = map['providerVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      requestHeaderOptions: (() {
        final guardedValue = map['requestHeaderOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesRequestHeaderOptionsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      requiredFeatures: (() {
        final guardedValue = map['requiredFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupLockOptionDuringMove: (() {
        final guardedValue = map['resourceGroupLockOptionDuringMove'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesResourceGroupLockOptionDuringMoveResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceHydrationAccounts: (() {
        final guardedValue = map['resourceHydrationAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceHydrationAccountResponse>(
            guardedValue,
            (value) => ResourceHydrationAccountResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceProviderAuthorizationRules: (() {
        final guardedValue = map['resourceProviderAuthorizationRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderAuthorizationRulesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      responseOptions: (() {
        final guardedValue = map['responseOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesResponseOptionsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      services: (() {
        final guardedValue = map['services'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourceProviderServiceResponse>(
            guardedValue,
            (value) => ResourceProviderServiceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      subscriptionLifecycleNotificationSpecifications: (() {
        final guardedValue =
            map['subscriptionLifecycleNotificationSpecifications'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      templateDeploymentOptions: (() {
        final guardedValue = map['templateDeploymentOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceProviderManifestPropertiesTemplateDeploymentOptionsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tokenAuthConfiguration: (() {
        final guardedValue = map['tokenAuthConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TokenAuthConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
