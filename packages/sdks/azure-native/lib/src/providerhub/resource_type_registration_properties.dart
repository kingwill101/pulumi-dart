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
  final pulumi.Input<bool?>? addResourceListTargetLocations;
  /// The additional options.
  final pulumi.Input<dynamic>? additionalOptions;
  /// The allow empty role assignments.
  final pulumi.Input<bool?>? allowEmptyRoleAssignments;
  /// The allowed resource names.
  final pulumi.Input<List<AllowedResourceName>?>? allowedResourceNames;
  /// Allowed template deployment reference actions.
  final pulumi.Input<List<String>?>? allowedTemplateDeploymentReferenceActions;
  /// The allowed unauthorized actions.
  final pulumi.Input<List<String>?>? allowedUnauthorizedActions;
  /// The allowed unauthorized actions extensions.
  final pulumi.Input<List<AllowedUnauthorizedActionsExtension>?>? allowedUnauthorizedActionsExtensions;
  /// The api profiles.
  final pulumi.Input<List<ApiProfile>?>? apiProfiles;
  /// The async operation resource type name.
  final pulumi.Input<String?>? asyncOperationResourceTypeName;
  /// Async timeout rules
  final pulumi.Input<List<AsyncTimeoutRule>?>? asyncTimeoutRules;
  /// The authorization action mappings
  final pulumi.Input<List<AuthorizationActionMapping>?>? authorizationActionMappings;
  /// The availability zone rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesAvailabilityZoneRule?>? availabilityZoneRule;
  /// Capacity rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCapacityRule?>? capacityRule;
  /// The category.
  final pulumi.Input<dynamic>? category;
  /// The check name availability specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications?>? checkNameAvailabilitySpecifications;
  /// Common API versions for the resource type.
  final pulumi.Input<List<String>?>? commonApiVersions;
  /// The cross tenant token validation.
  final pulumi.Input<dynamic>? crossTenantTokenValidation;
  /// The default api version.
  final pulumi.Input<String?>? defaultApiVersion;
  /// The disallowed action verbs.
  final pulumi.Input<List<String>?>? disallowedActionVerbs;
  /// The disallowed end user operations.
  final pulumi.Input<List<String>?>? disallowedEndUserOperations;
  /// The dsts configuration.
  final pulumi.Input<ResourceTypeRegistrationPropertiesDstsConfiguration?>? dstsConfiguration;
  /// Whether async operation is enabled.
  final pulumi.Input<bool?>? enableAsyncOperation;
  /// Whether third party S2S is enabled.
  final pulumi.Input<bool?>? enableThirdPartyS2S;
  /// The extensions.
  final pulumi.Input<List<ResourceTypeEndpoint>?>? endpoints;
  /// The extended locations.
  final pulumi.Input<List<ExtendedLocationOptions>?>? extendedLocations;
  /// The extension options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesExtensionOptions?>? extensionOptions;
  /// The features rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesFeaturesRule?>? featuresRule;
  /// The frontdoor request mode.
  final pulumi.Input<dynamic>? frontdoorRequestMode;
  /// Grouping tag.
  final pulumi.Input<String?>? groupingTag;
  /// The identity management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesIdentityManagement?>? identityManagement;
  /// Whether it is pure proxy.
  final pulumi.Input<bool?>? isPureProxy;
  /// The legacy name.
  final pulumi.Input<String?>? legacyName;
  /// The legacy names.
  final pulumi.Input<List<String>?>? legacyNames;
  /// The legacy policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesLegacyPolicy?>? legacyPolicy;
  /// The linked access checks.
  final pulumi.Input<List<LinkedAccessCheck>?>? linkedAccessChecks;
  /// The linked notification rules.
  final pulumi.Input<List<LinkedNotificationRule>?>? linkedNotificationRules;
  /// The linked operation rules.
  final pulumi.Input<List<LinkedOperationRule>?>? linkedOperationRules;
  /// The logging rules.
  final pulumi.Input<List<LoggingRule>?>? loggingRules;
  /// The resource provider management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesManagement?>? management;
  /// Manifest link.
  final pulumi.Input<String?>? manifestLink;
  /// Marketplace options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesMarketplaceOptions?>? marketplaceOptions;
  /// The marketplace type.
  final pulumi.Input<MarketplaceType?>? marketplaceType;
  /// The metadata.
  final pulumi.Input<dynamic>? metadata;
  /// The notifications.
  final pulumi.Input<List<Notification>?>? notifications;
  /// The on behalf of tokens.
  final pulumi.Input<ResourceTypeOnBehalfOfToken?>? onBehalfOfTokens;
  /// The open api configuration.
  final pulumi.Input<OpenApiConfiguration?>? openApiConfiguration;
  /// The policy execution type.
  final pulumi.Input<dynamic>? policyExecutionType;
  /// The quota rule.
  final pulumi.Input<QuotaRule?>? quotaRule;
  /// The regionality.
  final pulumi.Input<dynamic>? regionality;
  /// The request header options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRequestHeaderOptions?>? requestHeaderOptions;
  /// The required features.
  final pulumi.Input<List<String>?>? requiredFeatures;
  /// Resource cache options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceCache?>? resourceCache;
  /// The resource concurrency control options.
  final pulumi.Input<Map<String, ResourceConcurrencyControlOption>?>? resourceConcurrencyControlOptions;
  /// The resource deletion policy.
  final pulumi.Input<dynamic>? resourceDeletionPolicy;
  /// The resource graph configuration.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceGraphConfiguration?>? resourceGraphConfiguration;
  /// Resource management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceManagementOptions?>? resourceManagementOptions;
  /// The resource move policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceMovePolicy?>? resourceMovePolicy;
  /// The resource provider authorization rules.
  final pulumi.Input<ResourceProviderAuthorizationRules?>? resourceProviderAuthorizationRules;
  /// Resource query management options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceQueryManagement?>? resourceQueryManagement;
  /// The resource sub type.
  final pulumi.Input<dynamic>? resourceSubType;
  /// Resource type common attribute management.
  final pulumi.Input<ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement?>? resourceTypeCommonAttributeManagement;
  /// The resource validation.
  final pulumi.Input<dynamic>? resourceValidation;
  /// Routing rule.
  final pulumi.Input<ResourceTypeRegistrationPropertiesRoutingRule?>? routingRule;
  /// The resource routing type.
  final pulumi.Input<dynamic>? routingType;
  /// The service tree infos.
  final pulumi.Input<List<ServiceTreeInfo>?>? serviceTreeInfos;
  /// The sku link.
  final pulumi.Input<String?>? skuLink;
  /// The subscription lifecycle notification specifications.
  final pulumi.Input<ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications?>? subscriptionLifecycleNotificationSpecifications;
  /// The subscription state rules.
  final pulumi.Input<List<SubscriptionStateRule>?>? subscriptionStateRules;
  /// Whether tags are supported.
  final pulumi.Input<bool?>? supportsTags;
  /// The swagger specifications.
  final pulumi.Input<List<SwaggerSpecification>?>? swaggerSpecifications;
  /// The template deployment options.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentOptions?>? templateDeploymentOptions;
  /// The template deployment policy.
  final pulumi.Input<ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy?>? templateDeploymentPolicy;
  /// The throttling rules.
  final pulumi.Input<List<ThrottlingRule>?>? throttlingRules;
  /// The token auth configuration.
  final pulumi.Input<TokenAuthConfiguration?>? tokenAuthConfiguration;

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
  const ResourceTypeRegistrationProperties({
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
      'marketplaceType': ?pulumi.Input.mapOptionalInputValue<MarketplaceType, String>(marketplaceType, (value) => value.wireValue),
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
      addResourceListTargetLocations: (() { final guardedValue = map['addResourceListTargetLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      additionalOptions: (() { final guardedValue = map['additionalOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      allowEmptyRoleAssignments: (() { final guardedValue = map['allowEmptyRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedResourceNames: (() { final guardedValue = map['allowedResourceNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedResourceName>(guardedValue, (value) => AllowedResourceName.fromMap((value as Map).cast<String, dynamic>()))); })(),
      allowedTemplateDeploymentReferenceActions: (() { final guardedValue = map['allowedTemplateDeploymentReferenceActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedUnauthorizedActions: (() { final guardedValue = map['allowedUnauthorizedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedUnauthorizedActionsExtensions: (() { final guardedValue = map['allowedUnauthorizedActionsExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AllowedUnauthorizedActionsExtension>(guardedValue, (value) => AllowedUnauthorizedActionsExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      apiProfiles: (() { final guardedValue = map['apiProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiProfile>(guardedValue, (value) => ApiProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      asyncOperationResourceTypeName: (() { final guardedValue = map['asyncOperationResourceTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      asyncTimeoutRules: (() { final guardedValue = map['asyncTimeoutRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AsyncTimeoutRule>(guardedValue, (value) => AsyncTimeoutRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authorizationActionMappings: (() { final guardedValue = map['authorizationActionMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationActionMapping>(guardedValue, (value) => AuthorizationActionMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      availabilityZoneRule: (() { final guardedValue = map['availabilityZoneRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesAvailabilityZoneRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityRule: (() { final guardedValue = map['capacityRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesCapacityRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      checkNameAvailabilitySpecifications: (() { final guardedValue = map['checkNameAvailabilitySpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesCheckNameAvailabilitySpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      commonApiVersions: (() { final guardedValue = map['commonApiVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      crossTenantTokenValidation: (() { final guardedValue = map['crossTenantTokenValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      defaultApiVersion: (() { final guardedValue = map['defaultApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disallowedActionVerbs: (() { final guardedValue = map['disallowedActionVerbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      disallowedEndUserOperations: (() { final guardedValue = map['disallowedEndUserOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dstsConfiguration: (() { final guardedValue = map['dstsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesDstsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAsyncOperation: (() { final guardedValue = map['enableAsyncOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableThirdPartyS2S: (() { final guardedValue = map['enableThirdPartyS2S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceTypeEndpoint>(guardedValue, (value) => ResourceTypeEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtendedLocationOptions>(guardedValue, (value) => ExtendedLocationOptions.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extensionOptions: (() { final guardedValue = map['extensionOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesExtensionOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      featuresRule: (() { final guardedValue = map['featuresRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesFeaturesRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frontdoorRequestMode: (() { final guardedValue = map['frontdoorRequestMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      groupingTag: (() { final guardedValue = map['groupingTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityManagement: (() { final guardedValue = map['identityManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesIdentityManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isPureProxy: (() { final guardedValue = map['isPureProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      legacyName: (() { final guardedValue = map['legacyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      legacyNames: (() { final guardedValue = map['legacyNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      legacyPolicy: (() { final guardedValue = map['legacyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesLegacyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedAccessChecks: (() { final guardedValue = map['linkedAccessChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedAccessCheck>(guardedValue, (value) => LinkedAccessCheck.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedNotificationRules: (() { final guardedValue = map['linkedNotificationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedNotificationRule>(guardedValue, (value) => LinkedNotificationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedOperationRules: (() { final guardedValue = map['linkedOperationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedOperationRule>(guardedValue, (value) => LinkedOperationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loggingRules: (() { final guardedValue = map['loggingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LoggingRule>(guardedValue, (value) => LoggingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      management: (() { final guardedValue = map['management']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manifestLink: (() { final guardedValue = map['manifestLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplaceOptions: (() { final guardedValue = map['marketplaceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesMarketplaceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      marketplaceType: (() { final guardedValue = map['marketplaceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MarketplaceType.fromValue(guardedValue as String)); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Notification>(guardedValue, (value) => Notification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      onBehalfOfTokens: (() { final guardedValue = map['onBehalfOfTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeOnBehalfOfToken.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openApiConfiguration: (() { final guardedValue = map['openApiConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenApiConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyExecutionType: (() { final guardedValue = map['policyExecutionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      quotaRule: (() { final guardedValue = map['quotaRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QuotaRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regionality: (() { final guardedValue = map['regionality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      requestHeaderOptions: (() { final guardedValue = map['requestHeaderOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesRequestHeaderOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceCache: (() { final guardedValue = map['resourceCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceConcurrencyControlOptions: (() { final guardedValue = map['resourceConcurrencyControlOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ResourceConcurrencyControlOption>(guardedValue, (value) => ResourceConcurrencyControlOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceDeletionPolicy: (() { final guardedValue = map['resourceDeletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGraphConfiguration: (() { final guardedValue = map['resourceGraphConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceGraphConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceManagementOptions: (() { final guardedValue = map['resourceManagementOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceManagementOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceMovePolicy: (() { final guardedValue = map['resourceMovePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceMovePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceProviderAuthorizationRules: (() { final guardedValue = map['resourceProviderAuthorizationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceProviderAuthorizationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceQueryManagement: (() { final guardedValue = map['resourceQueryManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceQueryManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceSubType: (() { final guardedValue = map['resourceSubType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceTypeCommonAttributeManagement: (() { final guardedValue = map['resourceTypeCommonAttributeManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesResourceTypeCommonAttributeManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceValidation: (() { final guardedValue = map['resourceValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      routingRule: (() { final guardedValue = map['routingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesRoutingRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingType: (() { final guardedValue = map['routingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceTreeInfos: (() { final guardedValue = map['serviceTreeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTreeInfo>(guardedValue, (value) => ServiceTreeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      skuLink: (() { final guardedValue = map['skuLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionLifecycleNotificationSpecifications: (() { final guardedValue = map['subscriptionLifecycleNotificationSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesSubscriptionLifecycleNotificationSpecifications.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionStateRules: (() { final guardedValue = map['subscriptionStateRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubscriptionStateRule>(guardedValue, (value) => SubscriptionStateRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      supportsTags: (() { final guardedValue = map['supportsTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      swaggerSpecifications: (() { final guardedValue = map['swaggerSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SwaggerSpecification>(guardedValue, (value) => SwaggerSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateDeploymentOptions: (() { final guardedValue = map['templateDeploymentOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesTemplateDeploymentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      templateDeploymentPolicy: (() { final guardedValue = map['templateDeploymentPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceTypeRegistrationPropertiesTemplateDeploymentPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      throttlingRules: (() { final guardedValue = map['throttlingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThrottlingRule>(guardedValue, (value) => ThrottlingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tokenAuthConfiguration: (() { final guardedValue = map['tokenAuthConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TokenAuthConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
