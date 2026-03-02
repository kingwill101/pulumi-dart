// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_resource_name.dart';
import 'allowed_unauthorized_actions_extension.dart';
import 'api_profile.dart';
import 'async_timeout_rule.dart';
import 'authorization_action_mapping.dart';
import 'extended_location_options.dart';
import 'linked_access_check.dart';
import 'linked_notification_rule.dart';
import 'linked_operation_rule.dart';
import 'logging_rule.dart';
import 'marketplace_type.dart';
import 'notification.dart';
import 'open_api_configuration.dart';
import 'quota_rule.dart';
import 'resource_concurrency_control_option.dart';
import 'resource_provider_authorization_rules.dart';
import 'resource_type_endpoint.dart';
import 'resource_type_on_behalf_of_token.dart';
import 'resource_type_registration_properties_availability_zone_rule.dart';
import 'resource_type_registration_properties_capacity_rule.dart';
import 'resource_type_registration_properties_check_name_availability_specifications.dart';
import 'resource_type_registration_properties_dsts_configuration.dart';
import 'resource_type_registration_properties_extension_options.dart';
import 'resource_type_registration_properties_features_rule.dart';
import 'resource_type_registration_properties_identity_management.dart';
import 'resource_type_registration_properties_legacy_policy.dart';
import 'resource_type_registration_properties_management.dart';
import 'resource_type_registration_properties_marketplace_options.dart';
import 'resource_type_registration_properties_request_header_options.dart';
import 'resource_type_registration_properties_resource_cache.dart';
import 'resource_type_registration_properties_resource_graph_configuration.dart';
import 'resource_type_registration_properties_resource_management_options.dart';
import 'resource_type_registration_properties_resource_move_policy.dart';
import 'resource_type_registration_properties_resource_query_management.dart';
import 'resource_type_registration_properties_resource_type_common_attribute_management.dart';
import 'resource_type_registration_properties_routing_rule.dart';
import 'resource_type_registration_properties_subscription_lifecycle_notification_specifications.dart';
import 'resource_type_registration_properties_template_deployment_options.dart';
import 'resource_type_registration_properties_template_deployment_policy.dart';
import 'service_tree_info.dart';
import 'subscription_state_rule.dart';
import 'swagger_specification.dart';
import 'throttling_rule.dart';
import 'token_auth_configuration.dart';

class ResourceTypeRegistrationProperties {
  /// Add resource list target locations?
  final pulumi.Input<bool>? addResourceListTargetLocations;
  /// The additional options.
  final pulumi.Input<String>? additionalOptions;
  /// The allow empty role assignments.
  final pulumi.Input<bool>? allowEmptyRoleAssignments;
  /// The allowed resource names.
  final pulumi.Input<List<AllowedResourceName>>? allowedResourceNames;
  /// Allowed template deployment reference actions.
  final pulumi.Input<List<String>>? allowedTemplateDeploymentReferenceActions;
  /// The allowed unauthorized actions.
  final pulumi.Input<List<String>>? allowedUnauthorizedActions;
  /// The allowed unauthorized actions extensions.
  final pulumi.Input<List<AllowedUnauthorizedActionsExtension>>? allowedUnauthorizedActionsExtensions;
  /// The api profiles.
  final pulumi.Input<List<ApiProfile>>? apiProfiles;
  /// The async operation resource type name.
  final pulumi.Input<String>? asyncOperationResourceTypeName;
  /// Async timeout rules
  final pulumi.Input<List<AsyncTimeoutRule>>? asyncTimeoutRules;
  /// The authorization action mappings
  final pulumi.Input<List<AuthorizationActionMapping>>? authorizationActionMappings;
  /// The availability zone rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesAvailabilityZoneRule>? availabilityZoneRule;
  /// Capacity rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCapacityRule>? capacityRule;
  /// The category.
  final pulumi.Input<String>? category;
  /// The check name availability specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications>? checkNameAvailabilitySpecifications;
  /// Common API versions for the resource type.
  final pulumi.Input<List<String>>? commonApiVersions;
  /// The cross tenant token validation.
  final pulumi.Input<String>? crossTenantTokenValidation;
  /// The default api version.
  final pulumi.Input<String>? defaultApiVersion;
  /// The disallowed action verbs.
  final pulumi.Input<List<String>>? disallowedActionVerbs;
  /// The disallowed end user operations.
  final pulumi.Input<List<String>>? disallowedEndUserOperations;
  /// The dsts configuration.
  final pulumi.Input<ResourceTypeRegistrationPropertiesDstsConfiguration>? dstsConfiguration;
  /// Whether async operation is enabled.
  final pulumi.Input<bool>? enableAsyncOperation;
  /// Whether third party S2S is enabled.
  final pulumi.Input<bool>? enableThirdPartyS2S;
  /// The extensions.
  final pulumi.Input<List<ResourceTypeEndpoint>>? endpoints;
  /// The extended locations.
  final pulumi.Input<List<ExtendedLocationOptions>>? extendedLocations;
  /// The extension options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesExtensionOptions>? extensionOptions;
  /// The features rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesFeaturesRule>? featuresRule;
  /// The frontdoor request mode.
  final pulumi.Input<String>? frontdoorRequestMode;
  /// Grouping tag.
  final pulumi.Input<String>? groupingTag;
  /// The identity management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesIdentityManagement>? identityManagement;
  /// Whether it is pure proxy.
  final pulumi.Input<bool>? isPureProxy;
  /// The legacy name.
  final pulumi.Input<String>? legacyName;
  /// The legacy names.
  final pulumi.Input<List<String>>? legacyNames;
  /// The legacy policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesLegacyPolicy>? legacyPolicy;
  /// The linked access checks.
  final pulumi.Input<List<LinkedAccessCheck>>? linkedAccessChecks;
  /// The linked notification rules.
  final pulumi.Input<List<LinkedNotificationRule>>? linkedNotificationRules;
  /// The linked operation rules.
  final pulumi.Input<List<LinkedOperationRule>>? linkedOperationRules;
  /// The logging rules.
  final pulumi.Input<List<LoggingRule>>? loggingRules;
  /// The resource provider management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesManagement>? management;
  /// Manifest link.
  final pulumi.Input<String>? manifestLink;
  /// Marketplace options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesMarketplaceOptions>? marketplaceOptions;
  /// The marketplace type.
  final pulumi.Input<MarketplaceType>? marketplaceType;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The notifications.
  final pulumi.Input<List<Notification>>? notifications;
  /// The on behalf of tokens.
  final pulumi.Input<ResourceTypeOnBehalfOfToken>? onBehalfOfTokens;
  /// The open api configuration.
  final pulumi.Input<OpenApiConfiguration>? openApiConfiguration;
  /// The policy execution type.
  final pulumi.Input<String>? policyExecutionType;
  /// The quota rule.
  final pulumi.Input<QuotaRule>? quotaRule;
  /// The regionality.
  final pulumi.Input<String>? regionality;
  /// The request header options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRequestHeaderOptions>? requestHeaderOptions;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// Resource cache options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceCache>? resourceCache;
  /// The resource concurrency control options.
  final pulumi.Input<Map<String, ResourceConcurrencyControlOption>>? resourceConcurrencyControlOptions;
  /// The resource deletion policy.
  final pulumi.Input<String>? resourceDeletionPolicy;
  /// The resource graph configuration.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceGraphConfiguration>? resourceGraphConfiguration;
  /// Resource management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceManagementOptions>? resourceManagementOptions;
  /// The resource move policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceMovePolicy>? resourceMovePolicy;
  /// The resource provider authorization rules.
  final pulumi.Input<ResourceProviderAuthorizationRules>? resourceProviderAuthorizationRules;
  /// Resource query management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceQueryManagement>? resourceQueryManagement;
  /// The resource sub type.
  final pulumi.Input<String>? resourceSubType;
  /// Resource type common attribute management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement>? resourceTypeCommonAttributeManagement;
  /// The resource validation.
  final pulumi.Input<String>? resourceValidation;
  /// Routing rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRoutingRule>? routingRule;
  /// The resource routing type.
  final pulumi.Input<String>? routingType;
  /// The service tree infos.
  final pulumi.Input<List<ServiceTreeInfo>>? serviceTreeInfos;
  /// The sku link.
  final pulumi.Input<String>? skuLink;
  /// The subscription lifecycle notification specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications>? subscriptionLifecycleNotificationSpecifications;
  /// The subscription state rules.
  final pulumi.Input<List<SubscriptionStateRule>>? subscriptionStateRules;
  /// Whether tags are supported.
  final pulumi.Input<bool>? supportsTags;
  /// The swagger specifications.
  final pulumi.Input<List<SwaggerSpecification>>? swaggerSpecifications;
  /// The template deployment options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentOptions>? templateDeploymentOptions;
  /// The template deployment policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy>? templateDeploymentPolicy;
  /// The throttling rules.
  final pulumi.Input<List<ThrottlingRule>>? throttlingRules;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfiguration>? tokenAuthConfiguration;

  /// Creates a new [ResourceTypeRegistrationProperties].
  /// [addResourceListTargetLocations] Add resource list target locations?
  /// [additionalOptions] The additional options.
  /// [allowEmptyRoleAssignments] The allow empty role assignments.
  /// [allowedResourceNames] The allowed resource names.
  /// [allowedTemplateDeploymentReferenceActions] Allowed template deployment reference actions.
  /// [allowedUnauthorizedActions] The allowed unauthorized actions.
  /// [allowedUnauthorizedActionsExtensions] The allowed unauthorized actions extensions.
  /// [apiProfiles] The api profiles.
  /// [asyncOperationResourceTypeName] The async operation resource type name.
  /// [asyncTimeoutRules] Async timeout rules
  /// [authorizationActionMappings] The authorization action mappings
  /// [availabilityZoneRule] The availability zone rule.
  /// [capacityRule] Capacity rule.
  /// [category] The category.
  /// [checkNameAvailabilitySpecifications] The check name availability specifications.
  /// [commonApiVersions] Common API versions for the resource type.
  /// [crossTenantTokenValidation] The cross tenant token validation.
  /// [defaultApiVersion] The default api version.
  /// [disallowedActionVerbs] The disallowed action verbs.
  /// [disallowedEndUserOperations] The disallowed end user operations.
  /// [dstsConfiguration] The dsts configuration.
  /// [enableAsyncOperation] Whether async operation is enabled.
  /// [enableThirdPartyS2S] Whether third party S2S is enabled.
  /// [endpoints] The extensions.
  /// [extendedLocations] The extended locations.
  /// [extensionOptions] The extension options.
  /// [featuresRule] The features rule.
  /// [frontdoorRequestMode] The frontdoor request mode.
  /// [groupingTag] Grouping tag.
  /// [identityManagement] The identity management.
  /// [isPureProxy] Whether it is pure proxy.
  /// [legacyName] The legacy name.
  /// [legacyNames] The legacy names.
  /// [legacyPolicy] The legacy policy.
  /// [linkedAccessChecks] The linked access checks.
  /// [linkedNotificationRules] The linked notification rules.
  /// [linkedOperationRules] The linked operation rules.
  /// [loggingRules] The logging rules.
  /// [management] The resource provider management.
  /// [manifestLink] Manifest link.
  /// [marketplaceOptions] Marketplace options.
  /// [marketplaceType] The marketplace type.
  /// [metadata] The metadata.
  /// [notifications] The notifications.
  /// [onBehalfOfTokens] The on behalf of tokens.
  /// [openApiConfiguration] The open api configuration.
  /// [policyExecutionType] The policy execution type.
  /// [quotaRule] The quota rule.
  /// [regionality] The regionality.
  /// [requestHeaderOptions] The request header options.
  /// [requiredFeatures] The required features.
  /// [resourceCache] Resource cache options.
  /// [resourceConcurrencyControlOptions] The resource concurrency control options.
  /// [resourceDeletionPolicy] The resource deletion policy.
  /// [resourceGraphConfiguration] The resource graph configuration.
  /// [resourceManagementOptions] Resource management options.
  /// [resourceMovePolicy] The resource move policy.
  /// [resourceProviderAuthorizationRules] The resource provider authorization rules.
  /// [resourceQueryManagement] Resource query management options.
  /// [resourceSubType] The resource sub type.
  /// [resourceTypeCommonAttributeManagement] Resource type common attribute management.
  /// [resourceValidation] The resource validation.
  /// [routingRule] Routing rule.
  /// [routingType] The resource routing type.
  /// [serviceTreeInfos] The service tree infos.
  /// [skuLink] The sku link.
  /// [subscriptionLifecycleNotificationSpecifications] The subscription lifecycle notification specifications.
  /// [subscriptionStateRules] The subscription state rules.
  /// [supportsTags] Whether tags are supported.
  /// [swaggerSpecifications] The swagger specifications.
  /// [templateDeploymentOptions] The template deployment options.
  /// [templateDeploymentPolicy] The template deployment policy.
  /// [throttlingRules] The throttling rules.
  /// [tokenAuthConfiguration] The token auth configuration.
  ResourceTypeRegistrationProperties({
    this.addResourceListTargetLocations,
    this.additionalOptions,
    this.allowEmptyRoleAssignments,
    this.allowedResourceNames,
    this.allowedTemplateDeploymentReferenceActions,
    this.allowedUnauthorizedActions,
    this.allowedUnauthorizedActionsExtensions,
    this.apiProfiles,
    this.asyncOperationResourceTypeName,
    this.asyncTimeoutRules,
    this.authorizationActionMappings,
    this.availabilityZoneRule,
    this.capacityRule,
    this.category,
    this.checkNameAvailabilitySpecifications,
    this.commonApiVersions,
    this.crossTenantTokenValidation,
    this.defaultApiVersion,
    this.disallowedActionVerbs,
    this.disallowedEndUserOperations,
    this.dstsConfiguration,
    this.enableAsyncOperation,
    this.enableThirdPartyS2S,
    this.endpoints,
    this.extendedLocations,
    this.extensionOptions,
    this.featuresRule,
    this.frontdoorRequestMode,
    this.groupingTag,
    this.identityManagement,
    this.isPureProxy,
    this.legacyName,
    this.legacyNames,
    this.legacyPolicy,
    this.linkedAccessChecks,
    this.linkedNotificationRules,
    this.linkedOperationRules,
    this.loggingRules,
    this.management,
    this.manifestLink,
    this.marketplaceOptions,
    this.marketplaceType,
    this.metadata,
    this.notifications,
    this.onBehalfOfTokens,
    this.openApiConfiguration,
    this.policyExecutionType,
    this.quotaRule,
    this.regionality,
    this.requestHeaderOptions,
    this.requiredFeatures,
    this.resourceCache,
    this.resourceConcurrencyControlOptions,
    this.resourceDeletionPolicy,
    this.resourceGraphConfiguration,
    this.resourceManagementOptions,
    this.resourceMovePolicy,
    this.resourceProviderAuthorizationRules,
    this.resourceQueryManagement,
    this.resourceSubType,
    this.resourceTypeCommonAttributeManagement,
    this.resourceValidation,
    this.routingRule,
    this.routingType,
    this.serviceTreeInfos,
    this.skuLink,
    this.subscriptionLifecycleNotificationSpecifications,
    this.subscriptionStateRules,
    this.supportsTags,
    this.swaggerSpecifications,
    this.templateDeploymentOptions,
    this.templateDeploymentPolicy,
    this.throttlingRules,
    this.tokenAuthConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addResourceListTargetLocations': ?addResourceListTargetLocations,
      'additionalOptions': ?additionalOptions,
      'allowEmptyRoleAssignments': ?allowEmptyRoleAssignments,
      'allowedResourceNames': ?pulumi.Input.mapOptionalInputValue<List<AllowedResourceName>, List<Map<String, dynamic>>>(allowedResourceNames, (value) => pulumi.Input.encodeList<AllowedResourceName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowedTemplateDeploymentReferenceActions': ?allowedTemplateDeploymentReferenceActions,
      'allowedUnauthorizedActions': ?allowedUnauthorizedActions,
      'allowedUnauthorizedActionsExtensions': ?pulumi.Input.mapOptionalInputValue<List<AllowedUnauthorizedActionsExtension>, List<Map<String, dynamic>>>(allowedUnauthorizedActionsExtensions, (value) => pulumi.Input.encodeList<AllowedUnauthorizedActionsExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiProfiles': ?pulumi.Input.mapOptionalInputValue<List<ApiProfile>, List<Map<String, dynamic>>>(apiProfiles, (value) => pulumi.Input.encodeList<ApiProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asyncOperationResourceTypeName': ?asyncOperationResourceTypeName,
      'asyncTimeoutRules': ?pulumi.Input.mapOptionalInputValue<List<AsyncTimeoutRule>, List<Map<String, dynamic>>>(asyncTimeoutRules, (value) => pulumi.Input.encodeList<AsyncTimeoutRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizationActionMappings': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationActionMapping>, List<Map<String, dynamic>>>(authorizationActionMappings, (value) => pulumi.Input.encodeList<AuthorizationActionMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZoneRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesAvailabilityZoneRule, Map<String, dynamic>>(availabilityZoneRule, (value) => value.toMap()),
      'capacityRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesCapacityRule, Map<String, dynamic>>(capacityRule, (value) => value.toMap()),
      'category': ?category,
      'checkNameAvailabilitySpecifications': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications, Map<String, dynamic>>(checkNameAvailabilitySpecifications, (value) => value.toMap()),
      'commonApiVersions': ?commonApiVersions,
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'defaultApiVersion': ?defaultApiVersion,
      'disallowedActionVerbs': ?disallowedActionVerbs,
      'disallowedEndUserOperations': ?disallowedEndUserOperations,
      'dstsConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesDstsConfiguration, Map<String, dynamic>>(dstsConfiguration, (value) => value.toMap()),
      'enableAsyncOperation': ?enableAsyncOperation,
      'enableThirdPartyS2S': ?enableThirdPartyS2S,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ResourceTypeEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocations': ?pulumi.Input.mapOptionalInputValue<List<ExtendedLocationOptions>, List<Map<String, dynamic>>>(extendedLocations, (value) => pulumi.Input.encodeList<ExtendedLocationOptions, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesExtensionOptions, Map<String, dynamic>>(extensionOptions, (value) => value.toMap()),
      'featuresRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesFeaturesRule, Map<String, dynamic>>(featuresRule, (value) => value.toMap()),
      'frontdoorRequestMode': ?frontdoorRequestMode,
      'groupingTag': ?groupingTag,
      'identityManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesIdentityManagement, Map<String, dynamic>>(identityManagement, (value) => value.toMap()),
      'isPureProxy': ?isPureProxy,
      'legacyName': ?legacyName,
      'legacyNames': ?legacyNames,
      'legacyPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesLegacyPolicy, Map<String, dynamic>>(legacyPolicy, (value) => value.toMap()),
      'linkedAccessChecks': ?pulumi.Input.mapOptionalInputValue<List<LinkedAccessCheck>, List<Map<String, dynamic>>>(linkedAccessChecks, (value) => pulumi.Input.encodeList<LinkedAccessCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedNotificationRules': ?pulumi.Input.mapOptionalInputValue<List<LinkedNotificationRule>, List<Map<String, dynamic>>>(linkedNotificationRules, (value) => pulumi.Input.encodeList<LinkedNotificationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedOperationRules': ?pulumi.Input.mapOptionalInputValue<List<LinkedOperationRule>, List<Map<String, dynamic>>>(linkedOperationRules, (value) => pulumi.Input.encodeList<LinkedOperationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggingRules': ?pulumi.Input.mapOptionalInputValue<List<LoggingRule>, List<Map<String, dynamic>>>(loggingRules, (value) => pulumi.Input.encodeList<LoggingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'management': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesManagement, Map<String, dynamic>>(management, (value) => value.toMap()),
      'manifestLink': ?manifestLink,
      'marketplaceOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesMarketplaceOptions, Map<String, dynamic>>(marketplaceOptions, (value) => value.toMap()),
      'marketplaceType': ?pulumi.Input.mapOptionalInputValue<MarketplaceType, String>(marketplaceType, (value) => value.value),
      'metadata': ?metadata,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<Notification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<Notification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onBehalfOfTokens': ?pulumi.Input.mapOptionalInputValue<ResourceTypeOnBehalfOfToken, Map<String, dynamic>>(onBehalfOfTokens, (value) => value.toMap()),
      'openApiConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenApiConfiguration, Map<String, dynamic>>(openApiConfiguration, (value) => value.toMap()),
      'policyExecutionType': ?policyExecutionType,
      'quotaRule': ?pulumi.Input.mapOptionalInputValue<QuotaRule, Map<String, dynamic>>(quotaRule, (value) => value.toMap()),
      'regionality': ?regionality,
      'requestHeaderOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesRequestHeaderOptions, Map<String, dynamic>>(requestHeaderOptions, (value) => value.toMap()),
      'requiredFeatures': ?requiredFeatures,
      'resourceCache': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceCache, Map<String, dynamic>>(resourceCache, (value) => value.toMap()),
      'resourceConcurrencyControlOptions': ?pulumi.Input.mapOptionalInputValue<Map<String, ResourceConcurrencyControlOption>, Map<String, Map<String, dynamic>>>(resourceConcurrencyControlOptions, (value) => pulumi.Input.encodeMapValues<ResourceConcurrencyControlOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceDeletionPolicy': ?resourceDeletionPolicy,
      'resourceGraphConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceGraphConfiguration, Map<String, dynamic>>(resourceGraphConfiguration, (value) => value.toMap()),
      'resourceManagementOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceManagementOptions, Map<String, dynamic>>(resourceManagementOptions, (value) => value.toMap()),
      'resourceMovePolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceMovePolicy, Map<String, dynamic>>(resourceMovePolicy, (value) => value.toMap()),
      'resourceProviderAuthorizationRules': ?pulumi.Input.mapOptionalInputValue<ResourceProviderAuthorizationRules, Map<String, dynamic>>(resourceProviderAuthorizationRules, (value) => value.toMap()),
      'resourceQueryManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceQueryManagement, Map<String, dynamic>>(resourceQueryManagement, (value) => value.toMap()),
      'resourceSubType': ?resourceSubType,
      'resourceTypeCommonAttributeManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement, Map<String, dynamic>>(resourceTypeCommonAttributeManagement, (value) => value.toMap()),
      'resourceValidation': ?resourceValidation,
      'routingRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesRoutingRule, Map<String, dynamic>>(routingRule, (value) => value.toMap()),
      'routingType': ?routingType,
      'serviceTreeInfos': ?pulumi.Input.mapOptionalInputValue<List<ServiceTreeInfo>, List<Map<String, dynamic>>>(serviceTreeInfos, (value) => pulumi.Input.encodeList<ServiceTreeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skuLink': ?skuLink,
      'subscriptionLifecycleNotificationSpecifications': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications, Map<String, dynamic>>(subscriptionLifecycleNotificationSpecifications, (value) => value.toMap()),
      'subscriptionStateRules': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionStateRule>, List<Map<String, dynamic>>>(subscriptionStateRules, (value) => pulumi.Input.encodeList<SubscriptionStateRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportsTags': ?supportsTags,
      'swaggerSpecifications': ?pulumi.Input.mapOptionalInputValue<List<SwaggerSpecification>, List<Map<String, dynamic>>>(swaggerSpecifications, (value) => pulumi.Input.encodeList<SwaggerSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateDeploymentOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesTemplateDeploymentOptions, Map<String, dynamic>>(templateDeploymentOptions, (value) => value.toMap()),
      'templateDeploymentPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy, Map<String, dynamic>>(templateDeploymentPolicy, (value) => value.toMap()),
      'throttlingRules': ?pulumi.Input.mapOptionalInputValue<List<ThrottlingRule>, List<Map<String, dynamic>>>(throttlingRules, (value) => pulumi.Input.encodeList<ThrottlingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<TokenAuthConfiguration, Map<String, dynamic>>(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationProperties.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationProperties(
      addResourceListTargetLocations: map['addResourceListTargetLocations'] == null ? null : (map['addResourceListTargetLocations'] as bool).input(),
      additionalOptions: map['additionalOptions'] == null ? null : (map['additionalOptions'] as String).input(),
      allowEmptyRoleAssignments: map['allowEmptyRoleAssignments'] == null ? null : (map['allowEmptyRoleAssignments'] as bool).input(),
      allowedResourceNames: map['allowedResourceNames'] == null ? null : (pulumi.Input.decodeList<AllowedResourceName>(map['allowedResourceNames'], (value) => AllowedResourceName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      allowedTemplateDeploymentReferenceActions: map['allowedTemplateDeploymentReferenceActions'] == null ? null : ((map['allowedTemplateDeploymentReferenceActions'] as List).cast<String>()).input(),
      allowedUnauthorizedActions: map['allowedUnauthorizedActions'] == null ? null : ((map['allowedUnauthorizedActions'] as List).cast<String>()).input(),
      allowedUnauthorizedActionsExtensions: map['allowedUnauthorizedActionsExtensions'] == null ? null : (pulumi.Input.decodeList<AllowedUnauthorizedActionsExtension>(map['allowedUnauthorizedActionsExtensions'], (value) => AllowedUnauthorizedActionsExtension.fromMap((value as Map).cast<String, dynamic>()))).input(),
      apiProfiles: map['apiProfiles'] == null ? null : (pulumi.Input.decodeList<ApiProfile>(map['apiProfiles'], (value) => ApiProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      asyncOperationResourceTypeName: map['asyncOperationResourceTypeName'] == null ? null : (map['asyncOperationResourceTypeName'] as String).input(),
      asyncTimeoutRules: map['asyncTimeoutRules'] == null ? null : (pulumi.Input.decodeList<AsyncTimeoutRule>(map['asyncTimeoutRules'], (value) => AsyncTimeoutRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authorizationActionMappings: map['authorizationActionMappings'] == null ? null : (pulumi.Input.decodeList<AuthorizationActionMapping>(map['authorizationActionMappings'], (value) => AuthorizationActionMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      availabilityZoneRule: map['availabilityZoneRule'] == null ? null : (ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap((map['availabilityZoneRule'] as Map).cast<String, dynamic>())).input(),
      capacityRule: map['capacityRule'] == null ? null : (ResourceTypeRegistrationPropertiesCapacityRule.fromMap((map['capacityRule'] as Map).cast<String, dynamic>())).input(),
      category: map['category'] == null ? null : (map['category'] as String).input(),
      checkNameAvailabilitySpecifications: map['checkNameAvailabilitySpecifications'] == null ? null : (ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications.fromMap((map['checkNameAvailabilitySpecifications'] as Map).cast<String, dynamic>())).input(),
      commonApiVersions: map['commonApiVersions'] == null ? null : ((map['commonApiVersions'] as List).cast<String>()).input(),
      crossTenantTokenValidation: map['crossTenantTokenValidation'] == null ? null : (map['crossTenantTokenValidation'] as String).input(),
      defaultApiVersion: map['defaultApiVersion'] == null ? null : (map['defaultApiVersion'] as String).input(),
      disallowedActionVerbs: map['disallowedActionVerbs'] == null ? null : ((map['disallowedActionVerbs'] as List).cast<String>()).input(),
      disallowedEndUserOperations: map['disallowedEndUserOperations'] == null ? null : ((map['disallowedEndUserOperations'] as List).cast<String>()).input(),
      dstsConfiguration: map['dstsConfiguration'] == null ? null : (ResourceTypeRegistrationPropertiesDstsConfiguration.fromMap((map['dstsConfiguration'] as Map).cast<String, dynamic>())).input(),
      enableAsyncOperation: map['enableAsyncOperation'] == null ? null : (map['enableAsyncOperation'] as bool).input(),
      enableThirdPartyS2S: map['enableThirdPartyS2S'] == null ? null : (map['enableThirdPartyS2S'] as bool).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<ResourceTypeEndpoint>(map['endpoints'], (value) => ResourceTypeEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extendedLocations: map['extendedLocations'] == null ? null : (pulumi.Input.decodeList<ExtendedLocationOptions>(map['extendedLocations'], (value) => ExtendedLocationOptions.fromMap((value as Map).cast<String, dynamic>()))).input(),
      extensionOptions: map['extensionOptions'] == null ? null : (ResourceTypeRegistrationPropertiesExtensionOptions.fromMap((map['extensionOptions'] as Map).cast<String, dynamic>())).input(),
      featuresRule: map['featuresRule'] == null ? null : (ResourceTypeRegistrationPropertiesFeaturesRule.fromMap((map['featuresRule'] as Map).cast<String, dynamic>())).input(),
      frontdoorRequestMode: map['frontdoorRequestMode'] == null ? null : (map['frontdoorRequestMode'] as String).input(),
      groupingTag: map['groupingTag'] == null ? null : (map['groupingTag'] as String).input(),
      identityManagement: map['identityManagement'] == null ? null : (ResourceTypeRegistrationPropertiesIdentityManagement.fromMap((map['identityManagement'] as Map).cast<String, dynamic>())).input(),
      isPureProxy: map['isPureProxy'] == null ? null : (map['isPureProxy'] as bool).input(),
      legacyName: map['legacyName'] == null ? null : (map['legacyName'] as String).input(),
      legacyNames: map['legacyNames'] == null ? null : ((map['legacyNames'] as List).cast<String>()).input(),
      legacyPolicy: map['legacyPolicy'] == null ? null : (ResourceTypeRegistrationPropertiesLegacyPolicy.fromMap((map['legacyPolicy'] as Map).cast<String, dynamic>())).input(),
      linkedAccessChecks: map['linkedAccessChecks'] == null ? null : (pulumi.Input.decodeList<LinkedAccessCheck>(map['linkedAccessChecks'], (value) => LinkedAccessCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedNotificationRules: map['linkedNotificationRules'] == null ? null : (pulumi.Input.decodeList<LinkedNotificationRule>(map['linkedNotificationRules'], (value) => LinkedNotificationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedOperationRules: map['linkedOperationRules'] == null ? null : (pulumi.Input.decodeList<LinkedOperationRule>(map['linkedOperationRules'], (value) => LinkedOperationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loggingRules: map['loggingRules'] == null ? null : (pulumi.Input.decodeList<LoggingRule>(map['loggingRules'], (value) => LoggingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      management: map['management'] == null ? null : (ResourceTypeRegistrationPropertiesManagement.fromMap((map['management'] as Map).cast<String, dynamic>())).input(),
      manifestLink: map['manifestLink'] == null ? null : (map['manifestLink'] as String).input(),
      marketplaceOptions: map['marketplaceOptions'] == null ? null : (ResourceTypeRegistrationPropertiesMarketplaceOptions.fromMap((map['marketplaceOptions'] as Map).cast<String, dynamic>())).input(),
      marketplaceType: map['marketplaceType'] == null ? null : (MarketplaceType.fromValue(map['marketplaceType'] as String)).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      notifications: map['notifications'] == null ? null : (pulumi.Input.decodeList<Notification>(map['notifications'], (value) => Notification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      onBehalfOfTokens: map['onBehalfOfTokens'] == null ? null : (ResourceTypeOnBehalfOfToken.fromMap((map['onBehalfOfTokens'] as Map).cast<String, dynamic>())).input(),
      openApiConfiguration: map['openApiConfiguration'] == null ? null : (OpenApiConfiguration.fromMap((map['openApiConfiguration'] as Map).cast<String, dynamic>())).input(),
      policyExecutionType: map['policyExecutionType'] == null ? null : (map['policyExecutionType'] as String).input(),
      quotaRule: map['quotaRule'] == null ? null : (QuotaRule.fromMap((map['quotaRule'] as Map).cast<String, dynamic>())).input(),
      regionality: map['regionality'] == null ? null : (map['regionality'] as String).input(),
      requestHeaderOptions: map['requestHeaderOptions'] == null ? null : (ResourceTypeRegistrationPropertiesRequestHeaderOptions.fromMap((map['requestHeaderOptions'] as Map).cast<String, dynamic>())).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
      resourceCache: map['resourceCache'] == null ? null : (ResourceTypeRegistrationPropertiesResourceCache.fromMap((map['resourceCache'] as Map).cast<String, dynamic>())).input(),
      resourceConcurrencyControlOptions: map['resourceConcurrencyControlOptions'] == null ? null : (pulumi.Input.decodeMapValues<ResourceConcurrencyControlOption>(map['resourceConcurrencyControlOptions'], (value) => ResourceConcurrencyControlOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceDeletionPolicy: map['resourceDeletionPolicy'] == null ? null : (map['resourceDeletionPolicy'] as String).input(),
      resourceGraphConfiguration: map['resourceGraphConfiguration'] == null ? null : (ResourceTypeRegistrationPropertiesResourceGraphConfiguration.fromMap((map['resourceGraphConfiguration'] as Map).cast<String, dynamic>())).input(),
      resourceManagementOptions: map['resourceManagementOptions'] == null ? null : (ResourceTypeRegistrationPropertiesResourceManagementOptions.fromMap((map['resourceManagementOptions'] as Map).cast<String, dynamic>())).input(),
      resourceMovePolicy: map['resourceMovePolicy'] == null ? null : (ResourceTypeRegistrationPropertiesResourceMovePolicy.fromMap((map['resourceMovePolicy'] as Map).cast<String, dynamic>())).input(),
      resourceProviderAuthorizationRules: map['resourceProviderAuthorizationRules'] == null ? null : (ResourceProviderAuthorizationRules.fromMap((map['resourceProviderAuthorizationRules'] as Map).cast<String, dynamic>())).input(),
      resourceQueryManagement: map['resourceQueryManagement'] == null ? null : (ResourceTypeRegistrationPropertiesResourceQueryManagement.fromMap((map['resourceQueryManagement'] as Map).cast<String, dynamic>())).input(),
      resourceSubType: map['resourceSubType'] == null ? null : (map['resourceSubType'] as String).input(),
      resourceTypeCommonAttributeManagement: map['resourceTypeCommonAttributeManagement'] == null ? null : (ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement.fromMap((map['resourceTypeCommonAttributeManagement'] as Map).cast<String, dynamic>())).input(),
      resourceValidation: map['resourceValidation'] == null ? null : (map['resourceValidation'] as String).input(),
      routingRule: map['routingRule'] == null ? null : (ResourceTypeRegistrationPropertiesRoutingRule.fromMap((map['routingRule'] as Map).cast<String, dynamic>())).input(),
      routingType: map['routingType'] == null ? null : (map['routingType'] as String).input(),
      serviceTreeInfos: map['serviceTreeInfos'] == null ? null : (pulumi.Input.decodeList<ServiceTreeInfo>(map['serviceTreeInfos'], (value) => ServiceTreeInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      skuLink: map['skuLink'] == null ? null : (map['skuLink'] as String).input(),
      subscriptionLifecycleNotificationSpecifications: map['subscriptionLifecycleNotificationSpecifications'] == null ? null : (ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap((map['subscriptionLifecycleNotificationSpecifications'] as Map).cast<String, dynamic>())).input(),
      subscriptionStateRules: map['subscriptionStateRules'] == null ? null : (pulumi.Input.decodeList<SubscriptionStateRule>(map['subscriptionStateRules'], (value) => SubscriptionStateRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      supportsTags: map['supportsTags'] == null ? null : (map['supportsTags'] as bool).input(),
      swaggerSpecifications: map['swaggerSpecifications'] == null ? null : (pulumi.Input.decodeList<SwaggerSpecification>(map['swaggerSpecifications'], (value) => SwaggerSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      templateDeploymentOptions: map['templateDeploymentOptions'] == null ? null : (ResourceTypeRegistrationPropertiesTemplateDeploymentOptions.fromMap((map['templateDeploymentOptions'] as Map).cast<String, dynamic>())).input(),
      templateDeploymentPolicy: map['templateDeploymentPolicy'] == null ? null : (ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy.fromMap((map['templateDeploymentPolicy'] as Map).cast<String, dynamic>())).input(),
      throttlingRules: map['throttlingRules'] == null ? null : (pulumi.Input.decodeList<ThrottlingRule>(map['throttlingRules'], (value) => ThrottlingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tokenAuthConfiguration: map['tokenAuthConfiguration'] == null ? null : (TokenAuthConfiguration.fromMap((map['tokenAuthConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

