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
  /// &gt; **NOTE:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
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
  /// &gt; **Note:** Configuring the number of replicas per master is only available when using the Premium SKU and cannot be used in conjunction with shards.
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
  /// &gt; **Note** Downgrading the SKU will force a new resource to be created.
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
  /// &gt; **Please Note:** Availability Zones are [in Preview and only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview) - as such you must be opted into the Preview to use this functionality. You can [opt into the Availability Zones Preview in the Azure Portal](https://aka.ms/azenroll).
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
  const CacheState({
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
      accessKeysAuthenticationEnabled: (() { final guardedValue = map['accessKeysAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonSslPortEnabled: (() { final guardedValue = map['nonSslPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      patchSchedules: (() { final guardedValue = map['patchSchedules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CachePatchSchedule>(guardedValue, (value) => CachePatchSchedule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateStaticIpAddress: (() { final guardedValue = map['privateStaticIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redisConfiguration: (() { final guardedValue = map['redisConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheRedisConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisVersion: (() { final guardedValue = map['redisVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicasPerMaster: (() { final guardedValue = map['replicasPerMaster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicasPerPrimary: (() { final guardedValue = map['replicasPerPrimary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPort: (() { final guardedValue = map['sslPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantSettings: (() { final guardedValue = map['tenantSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

