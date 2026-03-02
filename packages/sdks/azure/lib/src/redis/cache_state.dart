// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_identity.dart';
import 'cache_patch_schedule.dart';
import 'cache_redis_configuration.dart';

/// Input properties used for looking up and filtering Cache resources.
class CacheState {
  /// Whether access key authentication is enabled? Defaults to `true`. `active_directory_authentication_enabled` must be set to `true` to disable access key authentication.
  final pulumi.Input<bool>? accessKeysAuthenticationEnabled;
  /// The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`.
  final pulumi.Input<int>? capacity;
  /// The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  final pulumi.Input<String>? family;
  /// The Hostname of the Redis Instance
  final pulumi.Input<String>? hostname;
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
  /// The non-SSL Port of the Redis Instance
  final pulumi.Input<int>? port;
  /// The Primary Access Key for the Redis Instance
  final pulumi.Input<String>? primaryAccessKey;
  /// The primary connection string of the Redis Instance.
  final pulumi.Input<String>? primaryConnectionString;
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
  final pulumi.Input<String>? resourceGroupName;
  /// The Secondary Access Key for the Redis Instance
  final pulumi.Input<String>? secondaryAccessKey;
  /// The secondary connection string of the Redis Instance.
  final pulumi.Input<String>? secondaryConnectionString;
  /// *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster.
  final pulumi.Input<int>? shardCount;
  /// The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`.
  ///
  /// > **Note** Downgrading the SKU will force a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// The SSL Port of the Redis Instance
  final pulumi.Input<int>? sslPort;
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

  /// Creates a new [CacheState].
  /// [accessKeysAuthenticationEnabled] Whether access key authentication is enabled? Defaults to `true`. `active_directory_authentication_enabled` must be set to `true` to disable access key authentication.
  /// [capacity] The size of the Redis cache to deploy. Valid values for a SKU `family` of C (Basic/Standard) are `0, 1, 2, 3, 4, 5, 6`, and for P (Premium) `family` are `1, 2, 3, 4, 5`.
  /// [family] The SKU family/pricing group to use. Valid values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  /// [hostname] The Hostname of the Redis Instance
  /// [identity] An `identity` block as defined below.
  /// [location] The location of the resource group. Changing this forces a new resource to be created.
  /// [minimumTlsVersion] The minimum TLS version. Possible values are `1.0`, `1.1` and `1.2`. Defaults to `1.0`.
  /// [name] The name of the Redis instance. Changing this forces a new resource to be created.
  /// [nonSslPortEnabled] Enable the non-SSL port (6379) - disabled by default.
  /// [patchSchedules] A list of `patch_schedule` blocks as defined below.
  /// [port] The non-SSL Port of the Redis Instance
  /// [primaryAccessKey] The Primary Access Key for the Redis Instance
  /// [primaryConnectionString] The primary connection string of the Redis Instance.
  /// [privateStaticIpAddress] The Static IP Address to assign to the Redis Cache when hosted inside the Virtual Network. This argument implies the use of `subnet_id`. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether or not public network access is allowed for this Redis Cache. `true` means this resource could be accessed by both public and private endpoint. `false` means only private endpoint access is allowed. Defaults to `true`.
  /// [redisConfiguration] A `redis_configuration` block as defined below - with some limitations by SKU - defaults/details are shown below.
  /// [redisVersion] Redis version. Only major version needed. Possible values are `4` and `6`. Defaults to `6`.
  /// [replicasPerMaster] Amount of replicas to create per master for this Redis Cache.
  /// [replicasPerPrimary] Amount of replicas to create per primary for this Redis Cache. If both `replicas_per_primary` and `replicas_per_master` are set, they need to be equal.
  /// [resourceGroupName] The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created.
  /// [secondaryAccessKey] The Secondary Access Key for the Redis Instance
  /// [secondaryConnectionString] The secondary connection string of the Redis Instance.
  /// [shardCount] *Only available when using the Premium SKU* The number of Shards to create on the Redis Cluster.
  /// [skuName] The SKU of Redis to use. Possible values are `Basic`, `Standard` and `Premium`.
  /// [sslPort] The SSL Port of the Redis Instance
  /// [subnetId] *Only available when using the Premium SKU* The ID of the Subnet within which the Redis Cache should be deployed. This Subnet must only contain Azure Cache for Redis instances without any other type of resources. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tenantSettings] A mapping of tenant settings to assign to the resource.
  /// [zones] Specifies a list of Availability Zones in which this Redis Cache should be located. Changing this forces a new Redis Cache to be created.
  CacheState({
    this.accessKeysAuthenticationEnabled,
    this.capacity,
    this.family,
    this.hostname,
    this.identity,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.nonSslPortEnabled,
    this.patchSchedules,
    this.port,
    this.primaryAccessKey,
    this.primaryConnectionString,
    this.privateStaticIpAddress,
    this.publicNetworkAccessEnabled,
    this.redisConfiguration,
    this.redisVersion,
    this.replicasPerMaster,
    this.replicasPerPrimary,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.secondaryConnectionString,
    this.shardCount,
    this.skuName,
    this.sslPort,
    this.subnetId,
    this.tags,
    this.tenantSettings,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthenticationEnabled': ?accessKeysAuthenticationEnabled,
      'capacity': ?capacity,
      'family': ?family,
      'hostname': ?hostname,
      'identity': ?pulumi.Input.mapOptionalInputValue<CacheIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'nonSslPortEnabled': ?nonSslPortEnabled,
      'patchSchedules': ?pulumi.Input.mapOptionalInputValue<List<CachePatchSchedule>, List<Map<String, dynamic>>>(patchSchedules, (value) => pulumi.Input.encodeList<CachePatchSchedule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'primaryAccessKey': ?primaryAccessKey,
      'primaryConnectionString': ?primaryConnectionString,
      'privateStaticIpAddress': ?privateStaticIpAddress,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'redisConfiguration': ?pulumi.Input.mapOptionalInputValue<CacheRedisConfiguration, Map<String, dynamic>>(redisConfiguration, (value) => value.toMap()),
      'redisVersion': ?redisVersion,
      'replicasPerMaster': ?replicasPerMaster,
      'replicasPerPrimary': ?replicasPerPrimary,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'secondaryConnectionString': ?secondaryConnectionString,
      'shardCount': ?shardCount,
      'skuName': ?skuName,
      'sslPort': ?sslPort,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenantSettings': ?tenantSettings,
      'zones': ?zones,
    };
  }

  factory CacheState.fromMap(Map<String, dynamic> map) {
    return CacheState(
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] == null ? null : (map['accessKeysAuthenticationEnabled'] as bool).input(),
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname'] as String).input(),
      identity: map['identity'] == null ? null : (CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : (map['minimumTlsVersion'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nonSslPortEnabled: map['nonSslPortEnabled'] == null ? null : (map['nonSslPortEnabled'] as bool).input(),
      patchSchedules: map['patchSchedules'] == null ? null : (pulumi.Input.decodeList<CachePatchSchedule>(map['patchSchedules'], (value) => CachePatchSchedule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : (map['primaryAccessKey'] as String).input(),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : (map['primaryConnectionString'] as String).input(),
      privateStaticIpAddress: map['privateStaticIpAddress'] == null ? null : (map['privateStaticIpAddress'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      redisConfiguration: map['redisConfiguration'] == null ? null : (CacheRedisConfiguration.fromMap((map['redisConfiguration'] as Map).cast<String, dynamic>())).input(),
      redisVersion: map['redisVersion'] == null ? null : (map['redisVersion'] as String).input(),
      replicasPerMaster: map['replicasPerMaster'] == null ? null : (map['replicasPerMaster'] as int).input(),
      replicasPerPrimary: map['replicasPerPrimary'] == null ? null : (map['replicasPerPrimary'] as int).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : (map['secondaryAccessKey'] as String).input(),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : (map['secondaryConnectionString'] as String).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount'] as int).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      sslPort: map['sslPort'] == null ? null : (map['sslPort'] as int).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tenantSettings: map['tenantSettings'] == null ? null : ((map['tenantSettings'] as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

