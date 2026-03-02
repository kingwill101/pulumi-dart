// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_config_server_git_setting.dart';
import 'spring_cloud_service_container_registry.dart';
import 'spring_cloud_service_default_build_service.dart';
import 'spring_cloud_service_marketplace.dart';
import 'spring_cloud_service_network.dart';
import 'spring_cloud_service_required_network_traffic_rule.dart';
import 'spring_cloud_service_trace.dart';

/// Input properties used for looking up and filtering SpringCloudService resources.
class SpringCloudServiceState {
  /// Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<String>? buildAgentPoolSize;
  /// A `config_server_git_setting` block as defined below. This field is applicable only for Spring Cloud Service with basic and standard tier.
  final pulumi.Input<SpringCloudServiceConfigServerGitSetting>? configServerGitSetting;
  /// One or more `container_registry` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<List<SpringCloudServiceContainerRegistry>>? containerRegistries;
  /// A `default_build_service` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<SpringCloudServiceDefaultBuildService>? defaultBuildService;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Should the log stream in vnet injection instance could be accessed from Internet?
  final pulumi.Input<bool>? logStreamPublicEndpointEnabled;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on. Can only be specified when `sku_tier` is set to `StandardGen2`.
  final pulumi.Input<String>? managedEnvironmentId;
  /// A `marketplace` block as defined below. Can only be specified when `sku` is set to `E0`.
  final pulumi.Input<SpringCloudServiceMarketplace>? marketplace;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SpringCloudServiceNetwork>? network;
  /// A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  final pulumi.Input<List<String>>? outboundPublicIpAddresses;
  /// A list of `required_network_traffic_rules` blocks as defined below.
  final pulumi.Input<List<SpringCloudServiceRequiredNetworkTrafficRule>>? requiredNetworkTrafficRules;
  /// Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<bool>? serviceRegistryEnabled;
  /// The ID of the Spring Cloud Service Registry.
  final pulumi.Input<String>? serviceRegistryId;
  /// Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managed_environment_id` is defined. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `trace` block as defined below.
  final pulumi.Input<SpringCloudServiceTrace>? trace;
  /// Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [SpringCloudServiceState].
  /// [buildAgentPoolSize] Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [configServerGitSetting] A `config_server_git_setting` block as defined below. This field is applicable only for Spring Cloud Service with basic and standard tier.
  /// [containerRegistries] One or more `container_registry` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [defaultBuildService] A `default_build_service` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logStreamPublicEndpointEnabled] Should the log stream in vnet injection instance could be accessed from Internet?
  /// [managedEnvironmentId] The resource Id of the Managed Environment that the Spring Apps instance builds on. Can only be specified when `sku_tier` is set to `StandardGen2`.
  /// [marketplace] A `marketplace` block as defined below. Can only be specified when `sku` is set to `E0`.
  /// [name] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below. Changing this forces a new resource to be created.
  /// [outboundPublicIpAddresses] A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  /// [requiredNetworkTrafficRules] A list of `required_network_traffic_rules` blocks as defined below.
  /// [resourceGroupName] Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  /// [serviceRegistryEnabled] Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [serviceRegistryId] The ID of the Spring Cloud Service Registry.
  /// [skuName] Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  /// [skuTier] Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managed_environment_id` is defined. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trace] A `trace` block as defined below.
  /// [zoneRedundant] Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  SpringCloudServiceState({
    this.buildAgentPoolSize,
    this.configServerGitSetting,
    this.containerRegistries,
    this.defaultBuildService,
    this.location,
    this.logStreamPublicEndpointEnabled,
    this.managedEnvironmentId,
    this.marketplace,
    this.name,
    this.network,
    this.outboundPublicIpAddresses,
    this.requiredNetworkTrafficRules,
    this.resourceGroupName,
    this.serviceRegistryEnabled,
    this.serviceRegistryId,
    this.skuName,
    this.skuTier,
    this.tags,
    this.trace,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildAgentPoolSize': ?buildAgentPoolSize,
      'configServerGitSetting': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceConfigServerGitSetting, Map<String, dynamic>>(configServerGitSetting, (value) => value.toMap()),
      'containerRegistries': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudServiceContainerRegistry>, List<Map<String, dynamic>>>(containerRegistries, (value) => pulumi.Input.encodeList<SpringCloudServiceContainerRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultBuildService': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceDefaultBuildService, Map<String, dynamic>>(defaultBuildService, (value) => value.toMap()),
      'location': ?location,
      'logStreamPublicEndpointEnabled': ?logStreamPublicEndpointEnabled,
      'managedEnvironmentId': ?managedEnvironmentId,
      'marketplace': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceMarketplace, Map<String, dynamic>>(marketplace, (value) => value.toMap()),
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceNetwork, Map<String, dynamic>>(network, (value) => value.toMap()),
      'outboundPublicIpAddresses': ?outboundPublicIpAddresses,
      'requiredNetworkTrafficRules': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudServiceRequiredNetworkTrafficRule>, List<Map<String, dynamic>>>(requiredNetworkTrafficRules, (value) => pulumi.Input.encodeList<SpringCloudServiceRequiredNetworkTrafficRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'serviceRegistryEnabled': ?serviceRegistryEnabled,
      'serviceRegistryId': ?serviceRegistryId,
      'skuName': ?skuName,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'trace': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceTrace, Map<String, dynamic>>(trace, (value) => value.toMap()),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory SpringCloudServiceState.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceState(
      buildAgentPoolSize: map['buildAgentPoolSize'] == null ? null : (map['buildAgentPoolSize'] as String).input(),
      configServerGitSetting: map['configServerGitSetting'] == null ? null : (SpringCloudServiceConfigServerGitSetting.fromMap((map['configServerGitSetting'] as Map).cast<String, dynamic>())).input(),
      containerRegistries: map['containerRegistries'] == null ? null : (pulumi.Input.decodeList<SpringCloudServiceContainerRegistry>(map['containerRegistries'], (value) => SpringCloudServiceContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultBuildService: map['defaultBuildService'] == null ? null : (SpringCloudServiceDefaultBuildService.fromMap((map['defaultBuildService'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logStreamPublicEndpointEnabled: map['logStreamPublicEndpointEnabled'] == null ? null : (map['logStreamPublicEndpointEnabled'] as bool).input(),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : (map['managedEnvironmentId'] as String).input(),
      marketplace: map['marketplace'] == null ? null : (SpringCloudServiceMarketplace.fromMap((map['marketplace'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (SpringCloudServiceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      outboundPublicIpAddresses: map['outboundPublicIpAddresses'] == null ? null : ((map['outboundPublicIpAddresses'] as List).cast<String>()).input(),
      requiredNetworkTrafficRules: map['requiredNetworkTrafficRules'] == null ? null : (pulumi.Input.decodeList<SpringCloudServiceRequiredNetworkTrafficRule>(map['requiredNetworkTrafficRules'], (value) => SpringCloudServiceRequiredNetworkTrafficRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      serviceRegistryEnabled: map['serviceRegistryEnabled'] == null ? null : (map['serviceRegistryEnabled'] as bool).input(),
      serviceRegistryId: map['serviceRegistryId'] == null ? null : (map['serviceRegistryId'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      skuTier: map['skuTier'] == null ? null : (map['skuTier'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trace: map['trace'] == null ? null : (SpringCloudServiceTrace.fromMap((map['trace'] as Map).cast<String, dynamic>())).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

