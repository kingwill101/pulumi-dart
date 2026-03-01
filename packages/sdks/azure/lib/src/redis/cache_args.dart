// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_identity.dart';
import 'cache_patch_schedule.dart';
import 'cache_redis_configuration.dart';

/// {@template pulumi_redis_cache_cache_args_doc}
/// The set of arguments for Cache.
/// {@endtemplate}
/// {@macro pulumi_redis_cache_cache_args_doc}
class CacheArgs {
  /// Whether access key authentication is enabled? Defaults to `true`. `active_directory_authentication_enabled` must be set to `true` to disable access key authentication.
  final pulumi.Input<bool>? accessKeysAuthenticationEnabled;
  /// The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`.
  final pulumi.Input<int> capacity;
  /// The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  final pulumi.Input<String> family;
  /// An `identity` block as defined below.
  final pulumi.Input<CacheIdentity>? identity;
  /// The location of the resource group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`.
  ///
  /// > **NOTE:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the Redis instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Enable the non-SSL port (6379) - disabled by default.
  final pulumi.Input<bool>? nonSslPortEnabled;
  /// A list of `patch_schedule` blocks as defined below.
  final pulumi.Input<List<CachePatchSchedule>>? patchSchedules;
  /// The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privateStaticIpAddress;
  /// Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// A `redis_configuration` block as defined below - with some limitations by SKU - defaults/details are shown below.
  final pulumi.Input<CacheRedisConfiguration>? redisConfiguration;
  /// Redis version. Only major version needed. Possible values are `4` and `6`. Defaults to `6`.
  final pulumi.Input<String>? redisVersion;
  /// Amount of replicas to create per master for this Redis Cache.
  ///
  /// > **Note:** Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards.
  final pulumi.Input<int>? replicasPerMaster;
  /// Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal.
  final pulumi.Input<int>? replicasPerPrimary;
  /// The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster.
  final pulumi.Input<int>? shardCount;
  /// The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`.
  ///
  /// > **Note** Downgrading the SKU will force a new resource to be created.
  final pulumi.Input<String> skuName;
  /// *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subnetId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// A mapping of tenant settings to assign to the resource.
  final pulumi.Input<Map<String, String>>? tenantSettings;
  /// Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created.
  ///
  /// > **Please Note:** Availability Zones are [in Preview and only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview) - as such you must be opted into the Preview to use this functionality. You can [opt into the Availability Zones Preview in the Azure Portal](https://aka.ms/azenroll).
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CacheArgs].
  /// [accessKeysAuthenticationEnabled] Whether access key authentication is enabled? Defaults to `true`. `active_directory_authentication_enabled` must be set to `true` to disable access key authentication.
  /// [capacity] The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`.
  /// [family] The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  /// [identity] An `identity` block as defined below.
  /// [location] The location of the resource group. Changing this forces a new resource to be created.
  /// [minimumTlsVersion] The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`.
  /// [name] The name of the Redis instance. Changing this forces a new resource to be created.
  /// [nonSslPortEnabled] Enable the non-SSL port (6379) - disabled by default.
  /// [patchSchedules] A list of `patch_schedule` blocks as defined below.
  /// [privateStaticIpAddress] The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`.
  /// [redisConfiguration] A `redis_configuration` block as defined below - with some limitations by SKU - defaults/details are shown below.
  /// [redisVersion] Redis version. Only major version needed. Possible values are `4` and `6`. Defaults to `6`.
  /// [replicasPerMaster] Amount of replicas to create per master for this Redis Cache.
  /// [replicasPerPrimary] Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal.
  /// [resourceGroupName] The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created.
  /// [shardCount] *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster.
  /// [skuName] The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`.
  /// [subnetId] *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tenantSettings] A mapping of tenant settings to assign to the resource.
  /// [zones] Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created.
  CacheArgs({
    pulumi.Output<bool>? accessKeysAuthenticationEnabled,
    required pulumi.Output<int> capacity,
    required pulumi.Output<String> family,
    pulumi.Output<CacheIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimumTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? nonSslPortEnabled,
    pulumi.Output<List<CachePatchSchedule>>? patchSchedules,
    pulumi.Output<String>? privateStaticIpAddress,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<CacheRedisConfiguration>? redisConfiguration,
    pulumi.Output<String>? redisVersion,
    pulumi.Output<int>? replicasPerMaster,
    pulumi.Output<int>? replicasPerPrimary,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? shardCount,
    required pulumi.Output<String> skuName,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tenantSettings,
    pulumi.Output<List<String>>? zones,
  }) :
      accessKeysAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(accessKeysAuthenticationEnabled),
      capacity = pulumi.Input.asInput<int>(capacity),
      family = pulumi.Input.asInput<String>(family),
      identity = pulumi.Input.asOptionalInput<CacheIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonSslPortEnabled = pulumi.Input.asOptionalInput<bool>(nonSslPortEnabled),
      patchSchedules = pulumi.Input.asOptionalInput<List<CachePatchSchedule>>(patchSchedules),
      privateStaticIpAddress = pulumi.Input.asOptionalInput<String>(privateStaticIpAddress),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      redisConfiguration = pulumi.Input.asOptionalInput<CacheRedisConfiguration>(redisConfiguration),
      redisVersion = pulumi.Input.asOptionalInput<String>(redisVersion),
      replicasPerMaster = pulumi.Input.asOptionalInput<int>(replicasPerMaster),
      replicasPerPrimary = pulumi.Input.asOptionalInput<int>(replicasPerPrimary),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shardCount = pulumi.Input.asOptionalInput<int>(shardCount),
      skuName = pulumi.Input.asInput<String>(skuName),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantSettings = pulumi.Input.asOptionalInput<Map<String, String>>(tenantSettings),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthenticationEnabled': ?accessKeysAuthenticationEnabled,
      'capacity': capacity,
      'family': family,
      'identity': ?pulumi.Input.mapOptionalInputValue<CacheIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'nonSslPortEnabled': ?nonSslPortEnabled,
      'patchSchedules': ?pulumi.Input.mapOptionalInputValue<List<CachePatchSchedule>, List<Map<String, dynamic>>>(patchSchedules, (value) => pulumi.Input.encodeList<CachePatchSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateStaticIpAddress': ?privateStaticIpAddress,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'redisConfiguration': ?pulumi.Input.mapOptionalInputValue<CacheRedisConfiguration, Map<String, dynamic>>(redisConfiguration, (value) => value.toMap()),
      'redisVersion': ?redisVersion,
      'replicasPerMaster': ?replicasPerMaster,
      'replicasPerPrimary': ?replicasPerPrimary,
      'resourceGroupName': resourceGroupName,
      'shardCount': ?shardCount,
      'skuName': skuName,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenantSettings': ?tenantSettings,
      'zones': ?zones,
    };
  }

  factory CacheArgs.fromMap(Map<String, dynamic> map) {
    return CacheArgs(
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['accessKeysAuthenticationEnabled'] as bool),
      capacity: pulumi.Output.create<int>(map['capacity'] as int),
      family: pulumi.Output.create<String>(map['family'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<CacheIdentity>(CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nonSslPortEnabled: map['nonSslPortEnabled'] == null ? null : pulumi.Output.create<bool>(map['nonSslPortEnabled'] as bool),
      patchSchedules: map['patchSchedules'] == null ? null : pulumi.Output.create<List<CachePatchSchedule>>(pulumi.Input.decodeList<CachePatchSchedule>(map['patchSchedules'], (value) => CachePatchSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      privateStaticIpAddress: map['privateStaticIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateStaticIpAddress'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      redisConfiguration: map['redisConfiguration'] == null ? null : pulumi.Output.create<CacheRedisConfiguration>(CacheRedisConfiguration.fromMap((map['redisConfiguration'] as Map).cast<String, dynamic>())),
      redisVersion: map['redisVersion'] == null ? null : pulumi.Output.create<String>(map['redisVersion'] as String),
      replicasPerMaster: map['replicasPerMaster'] == null ? null : pulumi.Output.create<int>(map['replicasPerMaster'] as int),
      replicasPerPrimary: map['replicasPerPrimary'] == null ? null : pulumi.Output.create<int>(map['replicasPerPrimary'] as int),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shardCount: map['shardCount'] == null ? null : pulumi.Output.create<int>(map['shardCount'] as int),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantSettings: map['tenantSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tenantSettings'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

