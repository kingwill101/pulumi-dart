// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_resource_name_response.dart';
import 'allowed_unauthorized_actions_extension_response.dart';
import 'api_profile_response.dart';
import 'async_timeout_rule_response.dart';
import 'authorization_action_mapping_response.dart';
import 'extended_location_options_response.dart';
import 'linked_access_check_response.dart';
import 'linked_notification_rule_response.dart';
import 'linked_operation_rule_response.dart';
import 'logging_rule_response.dart';
import 'notification_response.dart';
import 'open_api_configuration_response.dart';
import 'quota_rule_response.dart';
import 'resource_concurrency_control_option_response.dart';
import 'resource_provider_authorization_rules_response.dart';
import 'resource_type_endpoint_response.dart';
import 'resource_type_on_behalf_of_token_response.dart';
import 'resource_type_registration_properties_availability_zone_rule_response.dart';
import 'resource_type_registration_properties_capacity_rule_response.dart';
import 'resource_type_registration_properties_check_name_availability_specifications_response.dart';
import 'resource_type_registration_properties_dsts_configuration_response.dart';
import 'resource_type_registration_properties_extension_options_response.dart';
import 'resource_type_registration_properties_features_rule_response.dart';
import 'resource_type_registration_properties_identity_management_response.dart';
import 'resource_type_registration_properties_legacy_policy_response.dart';
import 'resource_type_registration_properties_management_response.dart';
import 'resource_type_registration_properties_marketplace_options_response.dart';
import 'resource_type_registration_properties_request_header_options_response.dart';
import 'resource_type_registration_properties_resource_cache_response.dart';
import 'resource_type_registration_properties_resource_graph_configuration_response.dart';
import 'resource_type_registration_properties_resource_management_options_response.dart';
import 'resource_type_registration_properties_resource_move_policy_response.dart';
import 'resource_type_registration_properties_resource_query_management_response.dart';
import 'resource_type_registration_properties_resource_type_common_attribute_management_response.dart';
import 'resource_type_registration_properties_routing_rule_response.dart';
import 'resource_type_registration_properties_subscription_lifecycle_notification_specifications_response.dart';
import 'resource_type_registration_properties_template_deployment_options_response.dart';
import 'resource_type_registration_properties_template_deployment_policy_response.dart';
import 'service_tree_info_response.dart';
import 'subscription_state_rule_response.dart';
import 'swagger_specification_response.dart';
import 'throttling_rule_response.dart';
import 'token_auth_configuration_response.dart';

class ResourceTypeRegistrationPropertiesResponse {
  /// Add resource list target locations?
  final pulumi.Input<bool>? addResourceListTargetLocations;
  /// The additional options.
  final pulumi.Input<String>? additionalOptions;
  /// The allow empty role assignments.
  final pulumi.Input<bool>? allowEmptyRoleAssignments;
  /// The allowed resource names.
  final pulumi.Input<List<AllowedResourceNameResponse>>? allowedResourceNames;
  /// Allowed template deployment reference actions.
  final pulumi.Input<List<String>>? allowedTemplateDeploymentReferenceActions;
  /// The allowed unauthorized actions.
  final pulumi.Input<List<String>>? allowedUnauthorizedActions;
  /// The allowed unauthorized actions extensions.
  final pulumi.Input<List<AllowedUnauthorizedActionsExtensionResponse>>? allowedUnauthorizedActionsExtensions;
  /// The api profiles.
  final pulumi.Input<List<ApiProfileResponse>>? apiProfiles;
  /// The async operation resource type name.
  final pulumi.Input<String>? asyncOperationResourceTypeName;
  /// Async timeout rules
  final pulumi.Input<List<AsyncTimeoutRuleResponse>>? asyncTimeoutRules;
  /// The authorization action mappings
  final pulumi.Input<List<AuthorizationActionMappingResponse>>? authorizationActionMappings;
  /// The availability zone rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse>? availabilityZoneRule;
  /// Capacity rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCapacityRuleResponse>? capacityRule;
  /// The category.
  final pulumi.Input<String>? category;
  /// The check name availability specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse>? checkNameAvailabilitySpecifications;
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
  final pulumi.Input<ResourceTypeRegistrationPropertiesDstsConfigurationResponse>? dstsConfiguration;
  /// Whether async operation is enabled.
  final pulumi.Input<bool>? enableAsyncOperation;
  /// Whether third party S2S is enabled.
  final pulumi.Input<bool>? enableThirdPartyS2S;
  /// The extensions.
  final pulumi.Input<List<ResourceTypeEndpointResponse>>? endpoints;
  /// The extended locations.
  final pulumi.Input<List<ExtendedLocationOptionsResponse>>? extendedLocations;
  /// The extension options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesExtensionOptionsResponse>? extensionOptions;
  /// The features rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesFeaturesRuleResponse>? featuresRule;
  /// The frontdoor request mode.
  final pulumi.Input<String>? frontdoorRequestMode;
  /// Grouping tag.
  final pulumi.Input<String>? groupingTag;
  /// The identity management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesIdentityManagementResponse>? identityManagement;
  /// Whether it is pure proxy.
  final pulumi.Input<bool>? isPureProxy;
  /// The legacy name.
  final pulumi.Input<String>? legacyName;
  /// The legacy names.
  final pulumi.Input<List<String>>? legacyNames;
  /// The legacy policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesLegacyPolicyResponse>? legacyPolicy;
  /// The linked access checks.
  final pulumi.Input<List<LinkedAccessCheckResponse>>? linkedAccessChecks;
  /// The linked notification rules.
  final pulumi.Input<List<LinkedNotificationRuleResponse>>? linkedNotificationRules;
  /// The linked operation rules.
  final pulumi.Input<List<LinkedOperationRuleResponse>>? linkedOperationRules;
  /// The logging rules.
  final pulumi.Input<List<LoggingRuleResponse>>? loggingRules;
  /// The resource provider management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesManagementResponse>? management;
  /// Manifest link.
  final pulumi.Input<String>? manifestLink;
  /// Marketplace options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse>? marketplaceOptions;
  /// The marketplace type.
  final pulumi.Input<String>? marketplaceType;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The notifications.
  final pulumi.Input<List<NotificationResponse>>? notifications;
  /// The on behalf of tokens.
  final pulumi.Input<ResourceTypeOnBehalfOfTokenResponse>? onBehalfOfTokens;
  /// The open api configuration.
  final pulumi.Input<OpenApiConfigurationResponse>? openApiConfiguration;
  /// The policy execution type.
  final pulumi.Input<String>? policyExecutionType;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;
  /// The quota rule.
  final pulumi.Input<QuotaRuleResponse>? quotaRule;
  /// The regionality.
  final pulumi.Input<String>? regionality;
  /// The request header options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse>? requestHeaderOptions;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;
  /// Resource cache options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceCacheResponse>? resourceCache;
  /// The resource concurrency control options.
  final pulumi.Input<Map<String, ResourceConcurrencyControlOptionResponse>>? resourceConcurrencyControlOptions;
  /// The resource deletion policy.
  final pulumi.Input<String>? resourceDeletionPolicy;
  /// The resource graph configuration.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse>? resourceGraphConfiguration;
  /// Resource management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse>? resourceManagementOptions;
  /// The resource move policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceMovePolicyResponse>? resourceMovePolicy;
  /// The resource provider authorization rules.
  final pulumi.Input<ResourceProviderAuthorizationRulesResponse>? resourceProviderAuthorizationRules;
  /// Resource query management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceQueryManagementResponse>? resourceQueryManagement;
  /// The resource sub type.
  final pulumi.Input<String>? resourceSubType;
  /// Resource type common attribute management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse>? resourceTypeCommonAttributeManagement;
  /// The resource validation.
  final pulumi.Input<String>? resourceValidation;
  /// Routing rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRoutingRuleResponse>? routingRule;
  /// The resource routing type.
  final pulumi.Input<String>? routingType;
  /// The service tree infos.
  final pulumi.Input<List<ServiceTreeInfoResponse>>? serviceTreeInfos;
  /// The sku link.
  final pulumi.Input<String>? skuLink;
  /// The subscription lifecycle notification specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse>? subscriptionLifecycleNotificationSpecifications;
  /// The subscription state rules.
  final pulumi.Input<List<SubscriptionStateRuleResponse>>? subscriptionStateRules;
  /// Whether tags are supported.
  final pulumi.Input<bool>? supportsTags;
  /// The swagger specifications.
  final pulumi.Input<List<SwaggerSpecificationResponse>>? swaggerSpecifications;
  /// The template deployment options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentOptionsResponse>? templateDeploymentOptions;
  /// The template deployment policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse>? templateDeploymentPolicy;
  /// The throttling rules.
  final pulumi.Input<List<ThrottlingRuleResponse>>? throttlingRules;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfigurationResponse>? tokenAuthConfiguration;

  /// Creates a new [ResourceTypeRegistrationPropertiesResponse].
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
  /// [provisioningState] The provisioning state.
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
  const ResourceTypeRegistrationPropertiesResponse({
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
    required this.provisioningState,
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
      'allowedResourceNames': ?pulumi.Input.mapOptionalInputValue<List<AllowedResourceNameResponse>, List<Map<String, dynamic>>>(allowedResourceNames, (value) => pulumi.Input.encodeList<AllowedResourceNameResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'allowedTemplateDeploymentReferenceActions': ?allowedTemplateDeploymentReferenceActions,
      'allowedUnauthorizedActions': ?allowedUnauthorizedActions,
      'allowedUnauthorizedActionsExtensions': ?pulumi.Input.mapOptionalInputValue<List<AllowedUnauthorizedActionsExtensionResponse>, List<Map<String, dynamic>>>(allowedUnauthorizedActionsExtensions, (value) => pulumi.Input.encodeList<AllowedUnauthorizedActionsExtensionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'apiProfiles': ?pulumi.Input.mapOptionalInputValue<List<ApiProfileResponse>, List<Map<String, dynamic>>>(apiProfiles, (value) => pulumi.Input.encodeList<ApiProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'asyncOperationResourceTypeName': ?asyncOperationResourceTypeName,
      'asyncTimeoutRules': ?pulumi.Input.mapOptionalInputValue<List<AsyncTimeoutRuleResponse>, List<Map<String, dynamic>>>(asyncTimeoutRules, (value) => pulumi.Input.encodeList<AsyncTimeoutRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizationActionMappings': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationActionMappingResponse>, List<Map<String, dynamic>>>(authorizationActionMappings, (value) => pulumi.Input.encodeList<AuthorizationActionMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'availabilityZoneRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse, Map<String, dynamic>>(availabilityZoneRule, (value) => value.toMap()),
      'capacityRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesCapacityRuleResponse, Map<String, dynamic>>(capacityRule, (value) => value.toMap()),
      'category': ?category,
      'checkNameAvailabilitySpecifications': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse, Map<String, dynamic>>(checkNameAvailabilitySpecifications, (value) => value.toMap()),
      'commonApiVersions': ?commonApiVersions,
      'crossTenantTokenValidation': ?crossTenantTokenValidation,
      'defaultApiVersion': ?defaultApiVersion,
      'disallowedActionVerbs': ?disallowedActionVerbs,
      'disallowedEndUserOperations': ?disallowedEndUserOperations,
      'dstsConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesDstsConfigurationResponse, Map<String, dynamic>>(dstsConfiguration, (value) => value.toMap()),
      'enableAsyncOperation': ?enableAsyncOperation,
      'enableThirdPartyS2S': ?enableThirdPartyS2S,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ResourceTypeEndpointResponse>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ResourceTypeEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extendedLocations': ?pulumi.Input.mapOptionalInputValue<List<ExtendedLocationOptionsResponse>, List<Map<String, dynamic>>>(extendedLocations, (value) => pulumi.Input.encodeList<ExtendedLocationOptionsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesExtensionOptionsResponse, Map<String, dynamic>>(extensionOptions, (value) => value.toMap()),
      'featuresRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesFeaturesRuleResponse, Map<String, dynamic>>(featuresRule, (value) => value.toMap()),
      'frontdoorRequestMode': ?frontdoorRequestMode,
      'groupingTag': ?groupingTag,
      'identityManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesIdentityManagementResponse, Map<String, dynamic>>(identityManagement, (value) => value.toMap()),
      'isPureProxy': ?isPureProxy,
      'legacyName': ?legacyName,
      'legacyNames': ?legacyNames,
      'legacyPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesLegacyPolicyResponse, Map<String, dynamic>>(legacyPolicy, (value) => value.toMap()),
      'linkedAccessChecks': ?pulumi.Input.mapOptionalInputValue<List<LinkedAccessCheckResponse>, List<Map<String, dynamic>>>(linkedAccessChecks, (value) => pulumi.Input.encodeList<LinkedAccessCheckResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedNotificationRules': ?pulumi.Input.mapOptionalInputValue<List<LinkedNotificationRuleResponse>, List<Map<String, dynamic>>>(linkedNotificationRules, (value) => pulumi.Input.encodeList<LinkedNotificationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedOperationRules': ?pulumi.Input.mapOptionalInputValue<List<LinkedOperationRuleResponse>, List<Map<String, dynamic>>>(linkedOperationRules, (value) => pulumi.Input.encodeList<LinkedOperationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loggingRules': ?pulumi.Input.mapOptionalInputValue<List<LoggingRuleResponse>, List<Map<String, dynamic>>>(loggingRules, (value) => pulumi.Input.encodeList<LoggingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'management': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesManagementResponse, Map<String, dynamic>>(management, (value) => value.toMap()),
      'manifestLink': ?manifestLink,
      'marketplaceOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse, Map<String, dynamic>>(marketplaceOptions, (value) => value.toMap()),
      'marketplaceType': ?marketplaceType,
      'metadata': ?metadata,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<NotificationResponse>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<NotificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'onBehalfOfTokens': ?pulumi.Input.mapOptionalInputValue<ResourceTypeOnBehalfOfTokenResponse, Map<String, dynamic>>(onBehalfOfTokens, (value) => value.toMap()),
      'openApiConfiguration': ?pulumi.Input.mapOptionalInputValue<OpenApiConfigurationResponse, Map<String, dynamic>>(openApiConfiguration, (value) => value.toMap()),
      'policyExecutionType': ?policyExecutionType,
      'provisioningState': provisioningState,
      'quotaRule': ?pulumi.Input.mapOptionalInputValue<QuotaRuleResponse, Map<String, dynamic>>(quotaRule, (value) => value.toMap()),
      'regionality': ?regionality,
      'requestHeaderOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse, Map<String, dynamic>>(requestHeaderOptions, (value) => value.toMap()),
      'requiredFeatures': ?requiredFeatures,
      'resourceCache': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceCacheResponse, Map<String, dynamic>>(resourceCache, (value) => value.toMap()),
      'resourceConcurrencyControlOptions': ?pulumi.Input.mapOptionalInputValue<Map<String, ResourceConcurrencyControlOptionResponse>, Map<String, Map<String, dynamic>>>(resourceConcurrencyControlOptions, (value) => pulumi.Input.encodeMapValues<ResourceConcurrencyControlOptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceDeletionPolicy': ?resourceDeletionPolicy,
      'resourceGraphConfiguration': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse, Map<String, dynamic>>(resourceGraphConfiguration, (value) => value.toMap()),
      'resourceManagementOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse, Map<String, dynamic>>(resourceManagementOptions, (value) => value.toMap()),
      'resourceMovePolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceMovePolicyResponse, Map<String, dynamic>>(resourceMovePolicy, (value) => value.toMap()),
      'resourceProviderAuthorizationRules': ?pulumi.Input.mapOptionalInputValue<ResourceProviderAuthorizationRulesResponse, Map<String, dynamic>>(resourceProviderAuthorizationRules, (value) => value.toMap()),
      'resourceQueryManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceQueryManagementResponse, Map<String, dynamic>>(resourceQueryManagement, (value) => value.toMap()),
      'resourceSubType': ?resourceSubType,
      'resourceTypeCommonAttributeManagement': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse, Map<String, dynamic>>(resourceTypeCommonAttributeManagement, (value) => value.toMap()),
      'resourceValidation': ?resourceValidation,
      'routingRule': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesRoutingRuleResponse, Map<String, dynamic>>(routingRule, (value) => value.toMap()),
      'routingType': ?routingType,
      'serviceTreeInfos': ?pulumi.Input.mapOptionalInputValue<List<ServiceTreeInfoResponse>, List<Map<String, dynamic>>>(serviceTreeInfos, (value) => pulumi.Input.encodeList<ServiceTreeInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'skuLink': ?skuLink,
      'subscriptionLifecycleNotificationSpecifications': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse, Map<String, dynamic>>(subscriptionLifecycleNotificationSpecifications, (value) => value.toMap()),
      'subscriptionStateRules': ?pulumi.Input.mapOptionalInputValue<List<SubscriptionStateRuleResponse>, List<Map<String, dynamic>>>(subscriptionStateRules, (value) => pulumi.Input.encodeList<SubscriptionStateRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'supportsTags': ?supportsTags,
      'swaggerSpecifications': ?pulumi.Input.mapOptionalInputValue<List<SwaggerSpecificationResponse>, List<Map<String, dynamic>>>(swaggerSpecifications, (value) => pulumi.Input.encodeList<SwaggerSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateDeploymentOptions': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesTemplateDeploymentOptionsResponse, Map<String, dynamic>>(templateDeploymentOptions, (value) => value.toMap()),
      'templateDeploymentPolicy': ?pulumi.Input.mapOptionalInputValue<ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse, Map<String, dynamic>>(templateDeploymentPolicy, (value) => value.toMap()),
      'throttlingRules': ?pulumi.Input.mapOptionalInputValue<List<ThrottlingRuleResponse>, List<Map<String, dynamic>>>(throttlingRules, (value) => pulumi.Input.encodeList<ThrottlingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenAuthConfiguration': ?pulumi.Input.mapOptionalInputValue<TokenAuthConfigurationResponse, Map<String, dynamic>>(tokenAuthConfiguration, (value) => value.toMap()),
    };
  }

  factory ResourceTypeRegistrationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResponse(
      addResourceListTargetLocations: (() { final guardedValue = map['addResourceListTargetLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowEmptyRoleAssignments: (() { final guardedValue = map['allowEmptyRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedResourceNames: (() { final guardedValue = map['allowedResourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedResourceNameResponse>(guardedValue, (value) => AllowedResourceNameResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowedTemplateDeploymentReferenceActions: (() { final guardedValue = map['allowedTemplateDeploymentReferenceActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedUnauthorizedActions: (() { final guardedValue = map['allowedUnauthorizedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedUnauthorizedActionsExtensions: (() { final guardedValue = map['allowedUnauthorizedActionsExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedUnauthorizedActionsExtensionResponse>(guardedValue, (value) => AllowedUnauthorizedActionsExtensionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiProfiles: (() { final guardedValue = map['apiProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProfileResponse>(guardedValue, (value) => ApiProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      asyncOperationResourceTypeName: (() { final guardedValue = map['asyncOperationResourceTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asyncTimeoutRules: (() { final guardedValue = map['asyncTimeoutRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AsyncTimeoutRuleResponse>(guardedValue, (value) => AsyncTimeoutRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authorizationActionMappings: (() { final guardedValue = map['authorizationActionMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationActionMappingResponse>(guardedValue, (value) => AuthorizationActionMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      availabilityZoneRule: (() { final guardedValue = map['availabilityZoneRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesAvailabilityZoneRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityRule: (() { final guardedValue = map['capacityRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesCapacityRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      checkNameAvailabilitySpecifications: (() { final guardedValue = map['checkNameAvailabilitySpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecificationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonApiVersions: (() { final guardedValue = map['commonApiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      crossTenantTokenValidation: (() { final guardedValue = map['crossTenantTokenValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultApiVersion: (() { final guardedValue = map['defaultApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disallowedActionVerbs: (() { final guardedValue = map['disallowedActionVerbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disallowedEndUserOperations: (() { final guardedValue = map['disallowedEndUserOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dstsConfiguration: (() { final guardedValue = map['dstsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesDstsConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAsyncOperation: (() { final guardedValue = map['enableAsyncOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableThirdPartyS2S: (() { final guardedValue = map['enableThirdPartyS2S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceTypeEndpointResponse>(guardedValue, (value) => ResourceTypeEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtendedLocationOptionsResponse>(guardedValue, (value) => ExtendedLocationOptionsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extensionOptions: (() { final guardedValue = map['extensionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesExtensionOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      featuresRule: (() { final guardedValue = map['featuresRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesFeaturesRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontdoorRequestMode: (() { final guardedValue = map['frontdoorRequestMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupingTag: (() { final guardedValue = map['groupingTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityManagement: (() { final guardedValue = map['identityManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesIdentityManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isPureProxy: (() { final guardedValue = map['isPureProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      legacyName: (() { final guardedValue = map['legacyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legacyNames: (() { final guardedValue = map['legacyNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      legacyPolicy: (() { final guardedValue = map['legacyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesLegacyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccessChecks: (() { final guardedValue = map['linkedAccessChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedAccessCheckResponse>(guardedValue, (value) => LinkedAccessCheckResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedNotificationRules: (() { final guardedValue = map['linkedNotificationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedNotificationRuleResponse>(guardedValue, (value) => LinkedNotificationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedOperationRules: (() { final guardedValue = map['linkedOperationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedOperationRuleResponse>(guardedValue, (value) => LinkedOperationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loggingRules: (() { final guardedValue = map['loggingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoggingRuleResponse>(guardedValue, (value) => LoggingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manifestLink: (() { final guardedValue = map['manifestLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceOptions: (() { final guardedValue = map['marketplaceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesMarketplaceOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      marketplaceType: (() { final guardedValue = map['marketplaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onBehalfOfTokens: (() { final guardedValue = map['onBehalfOfTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeOnBehalfOfTokenResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openApiConfiguration: (() { final guardedValue = map['openApiConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenApiConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyExecutionType: (() { final guardedValue = map['policyExecutionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      quotaRule: (() { final guardedValue = map['quotaRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuotaRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regionality: (() { final guardedValue = map['regionality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestHeaderOptions: (() { final guardedValue = map['requestHeaderOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesRequestHeaderOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceCache: (() { final guardedValue = map['resourceCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceCacheResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceConcurrencyControlOptions: (() { final guardedValue = map['resourceConcurrencyControlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ResourceConcurrencyControlOptionResponse>(guardedValue, (value) => ResourceConcurrencyControlOptionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceDeletionPolicy: (() { final guardedValue = map['resourceDeletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGraphConfiguration: (() { final guardedValue = map['resourceGraphConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceGraphConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceManagementOptions: (() { final guardedValue = map['resourceManagementOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceManagementOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceMovePolicy: (() { final guardedValue = map['resourceMovePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceMovePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceProviderAuthorizationRules: (() { final guardedValue = map['resourceProviderAuthorizationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderAuthorizationRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceQueryManagement: (() { final guardedValue = map['resourceQueryManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceQueryManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceSubType: (() { final guardedValue = map['resourceSubType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypeCommonAttributeManagement: (() { final guardedValue = map['resourceTypeCommonAttributeManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagementResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceValidation: (() { final guardedValue = map['resourceValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingRule: (() { final guardedValue = map['routingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesRoutingRuleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingType: (() { final guardedValue = map['routingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceTreeInfos: (() { final guardedValue = map['serviceTreeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTreeInfoResponse>(guardedValue, (value) => ServiceTreeInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      skuLink: (() { final guardedValue = map['skuLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionLifecycleNotificationSpecifications: (() { final guardedValue = map['subscriptionLifecycleNotificationSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecificationsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionStateRules: (() { final guardedValue = map['subscriptionStateRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionStateRuleResponse>(guardedValue, (value) => SubscriptionStateRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportsTags: (() { final guardedValue = map['supportsTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      swaggerSpecifications: (() { final guardedValue = map['swaggerSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SwaggerSpecificationResponse>(guardedValue, (value) => SwaggerSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateDeploymentOptions: (() { final guardedValue = map['templateDeploymentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesTemplateDeploymentOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDeploymentPolicy: (() { final guardedValue = map['templateDeploymentPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesTemplateDeploymentPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throttlingRules: (() { final guardedValue = map['throttlingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThrottlingRuleResponse>(guardedValue, (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tokenAuthConfiguration: (() { final guardedValue = map['tokenAuthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenAuthConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

