// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cache_patch_schedule.dart';
import 'get_cache_redis_configuration.dart';

/// Result data returned by getCache.
class GetCacheResult {
  /// Specifies if access key authentication is enabled.
  final bool accessKeysAuthenticationEnabled;
  /// The size of the Redis Cache deployed.
  final int capacity;
  /// The SKU family/pricing group used. Possible values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  final String family;
  /// The Hostname of the Redis Instance
  final String hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The location of the Redis Cache.
  final String location;
  /// The minimum TLS version.
  final String minimumTlsVersion;
  final String name;
  final bool nonSslPortEnabled;
  /// A list of `patch_schedule` blocks as defined below.
  final List<GetCachePatchSchedule> patchSchedules;
  /// The non-SSL Port of the Redis Instance
  final int port;
  /// The Primary Access Key for the Redis Instance
  final String primaryAccessKey;
  /// The primary connection string of the Redis Instance.
  final String primaryConnectionString;
  /// The Static IP Address assigned to the Redis Cache when hosted inside the Virtual Network.
  final String privateStaticIpAddress;
  /// A `redis_configuration` block as defined below.
  final List<GetCacheRedisConfiguration> redisConfigurations;
  final String resourceGroupName;
  /// The Secondary Access Key for the Redis Instance
  final String secondaryAccessKey;
  /// The secondary connection string of the Redis Instance.
  final String secondaryConnectionString;
  final int shardCount;
  /// The SKU of Redis used. Possible values are `Basic`, `Standard` and `Premium`.
  final String skuName;
  /// The SSL Port of the Redis Instance
  final int sslPort;
  final String subnetId;
  final Map<String, String> tags;
  /// A list of Availability Zones in which this Redis Cache is located.
  final List<String> zones;

  /// Creates a new [GetCacheResult].
  /// [accessKeysAuthenticationEnabled] Specifies if access key authentication is enabled.
  /// [capacity] The size of the Redis Cache deployed.
  /// [family] The SKU family/pricing group used. Possible values are `C` (for Basic/Standard SKU family) and `P` (for `Premium`)
  /// [hostname] The Hostname of the Redis Instance
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The location of the Redis Cache.
  /// [minimumTlsVersion] The minimum TLS version.
  /// [name] Required.
  /// [nonSslPortEnabled] Required.
  /// [patchSchedules] A list of `patch_schedule` blocks as defined below.
  /// [port] The non-SSL Port of the Redis Instance
  /// [primaryAccessKey] The Primary Access Key for the Redis Instance
  /// [primaryConnectionString] The primary connection string of the Redis Instance.
  /// [privateStaticIpAddress] The Static IP Address assigned to the Redis Cache when hosted inside the Virtual Network.
  /// [redisConfigurations] A `redis_configuration` block as defined below.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The Secondary Access Key for the Redis Instance
  /// [secondaryConnectionString] The secondary connection string of the Redis Instance.
  /// [shardCount] Required.
  /// [skuName] The SKU of Redis used. Possible values are `Basic`, `Standard` and `Premium`.
  /// [sslPort] The SSL Port of the Redis Instance
  /// [subnetId] Required.
  /// [tags] Required.
  /// [zones] A list of Availability Zones in which this Redis Cache is located.
  GetCacheResult({
    required this.accessKeysAuthenticationEnabled,
    required this.capacity,
    required this.family,
    required this.hostname,
    required this.id,
    required this.location,
    required this.minimumTlsVersion,
    required this.name,
    required this.nonSslPortEnabled,
    required this.patchSchedules,
    required this.port,
    required this.primaryAccessKey,
    required this.primaryConnectionString,
    required this.privateStaticIpAddress,
    required this.redisConfigurations,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.secondaryConnectionString,
    required this.shardCount,
    required this.skuName,
    required this.sslPort,
    required this.subnetId,
    required this.tags,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthenticationEnabled': accessKeysAuthenticationEnabled,
      'capacity': capacity,
      'family': family,
      'hostname': hostname,
      'id': id,
      'location': location,
      'minimumTlsVersion': minimumTlsVersion,
      'name': name,
      'nonSslPortEnabled': nonSslPortEnabled,
      'patchSchedules': pulumi.Input.encodeList<GetCachePatchSchedule, Map<String, dynamic>>(patchSchedules, (value) => value.toMap()),
      'port': port,
      'primaryAccessKey': primaryAccessKey,
      'primaryConnectionString': primaryConnectionString,
      'privateStaticIpAddress': privateStaticIpAddress,
      'redisConfigurations': pulumi.Input.encodeList<GetCacheRedisConfiguration, Map<String, dynamic>>(redisConfigurations, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'secondaryConnectionString': secondaryConnectionString,
      'shardCount': shardCount,
      'skuName': skuName,
      'sslPort': sslPort,
      'subnetId': subnetId,
      'tags': tags,
      'zones': zones,
    };
  }

  factory GetCacheResult.fromMap(Map<String, dynamic> map) {
    return GetCacheResult(
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] as bool,
      capacity: map['capacity'] as int,
      family: map['family'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
      name: map['name'] as String,
      nonSslPortEnabled: map['nonSslPortEnabled'] as bool,
      patchSchedules: pulumi.Input.decodeList<GetCachePatchSchedule>(map['patchSchedules']!, (value) => GetCachePatchSchedule.fromMap((value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      primaryAccessKey: map['primaryAccessKey'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      privateStaticIpAddress: map['privateStaticIpAddress'] as String,
      redisConfigurations: pulumi.Input.decodeList<GetCacheRedisConfiguration>(map['redisConfigurations']!, (value) => GetCacheRedisConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      shardCount: map['shardCount'] as int,
      skuName: map['skuName'] as String,
      sslPort: map['sslPort'] as int,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (map['zones'] as List).cast<String>(),
    );
  }
}

