// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity.dart';
import 'redis_common_properties_redis_configuration.dart';
import 'sku.dart';

/// {@template pulumi_redis_redis_args_doc}
/// The set of arguments for Redis.
/// {@endtemplate}
/// {@macro pulumi_redis_redis_args_doc}
class RedisArgs {
  /// Authentication to Redis through access keys is disabled when set as true. Default value is false.
  final pulumi.Input<bool>? disableAccessKeyAuthentication;
  /// Specifies whether the non-ssl Redis server port (6379) is enabled.
  final pulumi.Input<bool>? enableNonSslPort;
  /// The identity of the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2')
  final pulumi.Input<String>? minimumTlsVersion;
  /// The name of the RedisResource
  final pulumi.Input<String>? name;
  /// Whether or not public endpoint access is allowed for this cache.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method.
  final pulumi.Input<String>? publicNetworkAccess;
  /// All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
  final pulumi.Input<RedisCommonPropertiesRedisConfiguration>? redisConfiguration;
  /// Redis version. This should be in the form 'major[.minor]' (only 'major' is required) or the value 'latest' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is 'latest'.
  final pulumi.Input<String>? redisVersion;
  /// The number of replicas to be created per primary.
  final pulumi.Input<int>? replicasPerMaster;
  /// The number of replicas to be created per primary.
  final pulumi.Input<int>? replicasPerPrimary;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The number of shards to be created on a Premium Cluster Cache.
  final pulumi.Input<int>? shardCount;
  /// The SKU of the Redis cache to deploy.
  final pulumi.Input<Sku> sku;
  /// Static IP address. Optionally, may be specified when deploying a Redis cache inside an existing Azure Virtual Network; auto assigned by default.
  final pulumi.Input<String>? staticIP;
  /// The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
  final pulumi.Input<String>? subnetId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A dictionary of tenant settings
  final pulumi.Input<Map<String, String>>? tenantSettings;
  /// Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
  final pulumi.Input<String>? updateChannel;
  /// Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
  final pulumi.Input<String>? zonalAllocationPolicy;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [RedisArgs].
  /// [disableAccessKeyAuthentication] Authentication to Redis through access keys is disabled when set as true. Default value is false.
  /// [enableNonSslPort] Specifies whether the non-ssl Redis server port (6379) is enabled.
  /// [identity] The identity of the resource.
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2')
  /// [name] The name of the RedisResource
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this cache.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method.
  /// [redisConfiguration] All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
  /// [redisVersion] Redis version. This should be in the form 'major[.minor]' (only 'major' is required) or the value 'latest' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is 'latest'.
  /// [replicasPerMaster] The number of replicas to be created per primary.
  /// [replicasPerPrimary] The number of replicas to be created per primary.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [shardCount] The number of shards to be created on a Premium Cluster Cache.
  /// [sku] The SKU of the Redis cache to deploy.
  /// [staticIP] Static IP address. Optionally, may be specified when deploying a Redis cache inside an existing Azure Virtual Network; auto assigned by default.
  /// [subnetId] The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
  /// [tags] Resource tags.
  /// [tenantSettings] A dictionary of tenant settings
  /// [updateChannel] Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
  /// [zonalAllocationPolicy] Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  const RedisArgs({
    this.disableAccessKeyAuthentication,
    this.enableNonSslPort,
    this.identity,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.publicNetworkAccess,
    this.redisConfiguration,
    this.redisVersion,
    this.replicasPerMaster,
    this.replicasPerPrimary,
    required this.resourceGroupName,
    this.shardCount,
    required this.sku,
    this.staticIP,
    this.subnetId,
    this.tags,
    this.tenantSettings,
    this.updateChannel,
    this.zonalAllocationPolicy,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableAccessKeyAuthentication': ?disableAccessKeyAuthentication,
      'enableNonSslPort': ?enableNonSslPort,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'redisConfiguration': ?pulumi.Input.mapOptionalInputValue<RedisCommonPropertiesRedisConfiguration, Map<String, dynamic>>(redisConfiguration, (value) => value.toMap()),
      'redisVersion': ?redisVersion,
      'replicasPerMaster': ?replicasPerMaster,
      'replicasPerPrimary': ?replicasPerPrimary,
      'resourceGroupName': resourceGroupName,
      'shardCount': ?shardCount,
      'sku': pulumi.Input.mapInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'staticIP': ?staticIP,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenantSettings': ?tenantSettings,
      'updateChannel': ?updateChannel,
      'zonalAllocationPolicy': ?zonalAllocationPolicy,
      'zones': ?zones,
    };
  }

  factory RedisArgs.fromMap(Map<String, dynamic> map) {
    return RedisArgs(
      disableAccessKeyAuthentication: (() { final guardedValue = map['disableAccessKeyAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNonSslPort: (() { final guardedValue = map['enableNonSslPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redisConfiguration: (() { final guardedValue = map['redisConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RedisCommonPropertiesRedisConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redisVersion: (() { final guardedValue = map['redisVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicasPerMaster: (() { final guardedValue = map['replicasPerMaster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicasPerPrimary: (() { final guardedValue = map['replicasPerPrimary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: pulumi.Input.fromValue(Sku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      staticIP: (() { final guardedValue = map['staticIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenantSettings: (() { final guardedValue = map['tenantSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateChannel: (() { final guardedValue = map['updateChannel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zonalAllocationPolicy: (() { final guardedValue = map['zonalAllocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
