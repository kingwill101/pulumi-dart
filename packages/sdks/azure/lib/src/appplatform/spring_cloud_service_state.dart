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
  /// A `configServerGitSetting` block as defined below. This field is applicable only for Spring Cloud Service with basic and standard tier.
  final pulumi.Input<SpringCloudServiceConfigServerGitSetting>? configServerGitSetting;
  /// One or more `containerRegistry` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<List<SpringCloudServiceContainerRegistry>>? containerRegistries;
  /// A `defaultBuildService` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<SpringCloudServiceDefaultBuildService>? defaultBuildService;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Should the log stream in vnet injection instance could be accessed from Internet?
  final pulumi.Input<bool>? logStreamPublicEndpointEnabled;
  /// The resource Id of the Managed Environment that the Spring Apps instance builds on. Can only be specified when `skuTier` is set to `StandardGen2`.
  final pulumi.Input<String>? managedEnvironmentId;
  /// A `marketplace` block as defined below. Can only be specified when `sku` is set to `E0`.
  final pulumi.Input<SpringCloudServiceMarketplace>? marketplace;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `network` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<SpringCloudServiceNetwork>? network;
  /// A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  final pulumi.Input<List<String>>? outboundPublicIpAddresses;
  /// A list of `requiredNetworkTrafficRules` blocks as defined below.
  final pulumi.Input<List<SpringCloudServiceRequiredNetworkTrafficRule>>? requiredNetworkTrafficRules;
  /// Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<bool>? serviceRegistryEnabled;
  /// The ID of the Spring Cloud Service Registry.
  final pulumi.Input<String>? serviceRegistryId;
  /// Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managedEnvironmentId` is defined. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuTier;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `trace` block as defined below.
  final pulumi.Input<SpringCloudServiceTrace>? trace;
  /// Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [SpringCloudServiceState].
  /// [buildAgentPoolSize] Specifies the size for this Spring Cloud Service's default build agent pool. Possible values are `S1`, `S2`, `S3`, `S4` and `S5`. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [configServerGitSetting] A `configServerGitSetting` block as defined below. This field is applicable only for Spring Cloud Service with basic and standard tier.
  /// [containerRegistries] One or more `containerRegistry` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [defaultBuildService] A `defaultBuildService` block as defined below. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logStreamPublicEndpointEnabled] Should the log stream in vnet injection instance could be accessed from Internet?
  /// [managedEnvironmentId] The resource Id of the Managed Environment that the Spring Apps instance builds on. Can only be specified when `skuTier` is set to `StandardGen2`.
  /// [marketplace] A `marketplace` block as defined below. Can only be specified when `sku` is set to `E0`.
  /// [name] Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  /// [network] A `network` block as defined below. Changing this forces a new resource to be created.
  /// [outboundPublicIpAddresses] A list of the outbound Public IP Addresses used by this Spring Cloud Service.
  /// [requiredNetworkTrafficRules] A list of `requiredNetworkTrafficRules` blocks as defined below.
  /// [resourceGroupName] Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  /// [serviceRegistryEnabled] Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [serviceRegistryId] The ID of the Spring Cloud Service Registry.
  /// [skuName] Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  /// [skuTier] Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managedEnvironmentId` is defined. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trace] A `trace` block as defined below.
  /// [zoneRedundant] Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  const SpringCloudServiceState({
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
      buildAgentPoolSize: (() { final guardedValue = map['buildAgentPoolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configServerGitSetting: (() { final guardedValue = map['configServerGitSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceConfigServerGitSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerRegistries: (() { final guardedValue = map['containerRegistries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudServiceContainerRegistry>(guardedValue, (value) => SpringCloudServiceContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultBuildService: (() { final guardedValue = map['defaultBuildService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceDefaultBuildService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStreamPublicEndpointEnabled: (() { final guardedValue = map['logStreamPublicEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      managedEnvironmentId: (() { final guardedValue = map['managedEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      marketplace: (() { final guardedValue = map['marketplace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceMarketplace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceNetwork.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outboundPublicIpAddresses: (() { final guardedValue = map['outboundPublicIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requiredNetworkTrafficRules: (() { final guardedValue = map['requiredNetworkTrafficRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudServiceRequiredNetworkTrafficRule>(guardedValue, (value) => SpringCloudServiceRequiredNetworkTrafficRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRegistryEnabled: (() { final guardedValue = map['serviceRegistryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceRegistryId: (() { final guardedValue = map['serviceRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuTier: (() { final guardedValue = map['skuTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trace: (() { final guardedValue = map['trace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpringCloudServiceTrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
