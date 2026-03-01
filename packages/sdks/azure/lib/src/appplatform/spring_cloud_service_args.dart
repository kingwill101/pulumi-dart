// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_service_config_server_git_setting.dart';
import 'spring_cloud_service_container_registry.dart';
import 'spring_cloud_service_default_build_service.dart';
import 'spring_cloud_service_marketplace.dart';
import 'spring_cloud_service_network.dart';
import 'spring_cloud_service_trace.dart';

/// {@template pulumi_appplatform_spring_cloud_service_spring_cloud_service_args_doc}
/// The set of arguments for SpringCloudService.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_service_spring_cloud_service_args_doc}
class SpringCloudServiceArgs {
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
  /// Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  final pulumi.Input<bool>? serviceRegistryEnabled;
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

  /// Creates a new [SpringCloudServiceArgs].
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
  /// [resourceGroupName] Specifies The name of the resource group in which to create the Spring Cloud Service. Changing this forces a new resource to be created.
  /// [serviceRegistryEnabled] Whether enable the default Service Registry. This field is applicable only for Spring Cloud Service with enterprise tier.
  /// [skuName] Specifies the SKU Name for this Spring Cloud Service. Possible values are `B0`, `S0` and `E0`. Defaults to `S0`. Changing this forces a new resource to be created.
  /// [skuTier] Specifies the SKU Tier for this Spring Cloud Service. Possible values are `Basic`, `Enterprise`, `Standard` and `StandardGen2`. The attribute is automatically computed from API response except when `managed_environment_id` is defined. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [trace] A `trace` block as defined below.
  /// [zoneRedundant] Whether zone redundancy is enabled for this Spring Cloud Service. Defaults to `false`.
  SpringCloudServiceArgs({
    pulumi.Output<String>? buildAgentPoolSize,
    pulumi.Output<SpringCloudServiceConfigServerGitSetting>? configServerGitSetting,
    pulumi.Output<List<SpringCloudServiceContainerRegistry>>? containerRegistries,
    pulumi.Output<SpringCloudServiceDefaultBuildService>? defaultBuildService,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? logStreamPublicEndpointEnabled,
    pulumi.Output<String>? managedEnvironmentId,
    pulumi.Output<SpringCloudServiceMarketplace>? marketplace,
    pulumi.Output<String>? name,
    pulumi.Output<SpringCloudServiceNetwork>? network,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? serviceRegistryEnabled,
    pulumi.Output<String>? skuName,
    pulumi.Output<String>? skuTier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<SpringCloudServiceTrace>? trace,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      buildAgentPoolSize = pulumi.Input.asOptionalInput<String>(buildAgentPoolSize),
      configServerGitSetting = pulumi.Input.asOptionalInput<SpringCloudServiceConfigServerGitSetting>(configServerGitSetting),
      containerRegistries = pulumi.Input.asOptionalInput<List<SpringCloudServiceContainerRegistry>>(containerRegistries),
      defaultBuildService = pulumi.Input.asOptionalInput<SpringCloudServiceDefaultBuildService>(defaultBuildService),
      location = pulumi.Input.asOptionalInput<String>(location),
      logStreamPublicEndpointEnabled = pulumi.Input.asOptionalInput<bool>(logStreamPublicEndpointEnabled),
      managedEnvironmentId = pulumi.Input.asOptionalInput<String>(managedEnvironmentId),
      marketplace = pulumi.Input.asOptionalInput<SpringCloudServiceMarketplace>(marketplace),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<SpringCloudServiceNetwork>(network),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceRegistryEnabled = pulumi.Input.asOptionalInput<bool>(serviceRegistryEnabled),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      skuTier = pulumi.Input.asOptionalInput<String>(skuTier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trace = pulumi.Input.asOptionalInput<SpringCloudServiceTrace>(trace),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

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
      'resourceGroupName': resourceGroupName,
      'serviceRegistryEnabled': ?serviceRegistryEnabled,
      'skuName': ?skuName,
      'skuTier': ?skuTier,
      'tags': ?tags,
      'trace': ?pulumi.Input.mapOptionalInputValue<SpringCloudServiceTrace, Map<String, dynamic>>(trace, (value) => value.toMap()),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory SpringCloudServiceArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceArgs(
      buildAgentPoolSize: map['buildAgentPoolSize'] == null ? null : pulumi.Output.create<String>(map['buildAgentPoolSize'] as String),
      configServerGitSetting: map['configServerGitSetting'] == null ? null : pulumi.Output.create<SpringCloudServiceConfigServerGitSetting>(SpringCloudServiceConfigServerGitSetting.fromMap((map['configServerGitSetting'] as Map).cast<String, dynamic>())),
      containerRegistries: map['containerRegistries'] == null ? null : pulumi.Output.create<List<SpringCloudServiceContainerRegistry>>(pulumi.Input.decodeList<SpringCloudServiceContainerRegistry>(map['containerRegistries'], (value) => SpringCloudServiceContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      defaultBuildService: map['defaultBuildService'] == null ? null : pulumi.Output.create<SpringCloudServiceDefaultBuildService>(SpringCloudServiceDefaultBuildService.fromMap((map['defaultBuildService'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logStreamPublicEndpointEnabled: map['logStreamPublicEndpointEnabled'] == null ? null : pulumi.Output.create<bool>(map['logStreamPublicEndpointEnabled'] as bool),
      managedEnvironmentId: map['managedEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['managedEnvironmentId'] as String),
      marketplace: map['marketplace'] == null ? null : pulumi.Output.create<SpringCloudServiceMarketplace>(SpringCloudServiceMarketplace.fromMap((map['marketplace'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<SpringCloudServiceNetwork>(SpringCloudServiceNetwork.fromMap((map['network'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceRegistryEnabled: map['serviceRegistryEnabled'] == null ? null : pulumi.Output.create<bool>(map['serviceRegistryEnabled'] as bool),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      skuTier: map['skuTier'] == null ? null : pulumi.Output.create<String>(map['skuTier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trace: map['trace'] == null ? null : pulumi.Output.create<SpringCloudServiceTrace>(SpringCloudServiceTrace.fromMap((map['trace'] as Map).cast<String, dynamic>())),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}

