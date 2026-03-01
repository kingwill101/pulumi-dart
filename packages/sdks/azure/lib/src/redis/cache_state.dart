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
    pulumi.Output<bool>? accessKeysAuthenticationEnabled,
    pulumi.Output<int>? capacity,
    pulumi.Output<String>? family,
    pulumi.Output<String>? hostname,
    pulumi.Output<CacheIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? minimumTlsVersion,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? nonSslPortEnabled,
    pulumi.Output<List<CachePatchSchedule>>? patchSchedules,
    pulumi.Output<int>? port,
    pulumi.Output<String>? primaryAccessKey,
    pulumi.Output<String>? primaryConnectionString,
    pulumi.Output<String>? privateStaticIpAddress,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<CacheRedisConfiguration>? redisConfiguration,
    pulumi.Output<String>? redisVersion,
    pulumi.Output<int>? replicasPerMaster,
    pulumi.Output<int>? replicasPerPrimary,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? secondaryAccessKey,
    pulumi.Output<String>? secondaryConnectionString,
    pulumi.Output<int>? shardCount,
    pulumi.Output<String>? skuName,
    pulumi.Output<int>? sslPort,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tenantSettings,
    pulumi.Output<List<String>>? zones,
  }) :
      accessKeysAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(accessKeysAuthenticationEnabled),
      capacity = pulumi.Input.asOptionalInput<int>(capacity),
      family = pulumi.Input.asOptionalInput<String>(family),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      identity = pulumi.Input.asOptionalInput<CacheIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      minimumTlsVersion = pulumi.Input.asOptionalInput<String>(minimumTlsVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonSslPortEnabled = pulumi.Input.asOptionalInput<bool>(nonSslPortEnabled),
      patchSchedules = pulumi.Input.asOptionalInput<List<CachePatchSchedule>>(patchSchedules),
      port = pulumi.Input.asOptionalInput<int>(port),
      primaryAccessKey = pulumi.Input.asOptionalInput<String>(primaryAccessKey),
      primaryConnectionString = pulumi.Input.asOptionalInput<String>(primaryConnectionString),
      privateStaticIpAddress = pulumi.Input.asOptionalInput<String>(privateStaticIpAddress),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      redisConfiguration = pulumi.Input.asOptionalInput<CacheRedisConfiguration>(redisConfiguration),
      redisVersion = pulumi.Input.asOptionalInput<String>(redisVersion),
      replicasPerMaster = pulumi.Input.asOptionalInput<int>(replicasPerMaster),
      replicasPerPrimary = pulumi.Input.asOptionalInput<int>(replicasPerPrimary),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryAccessKey = pulumi.Input.asOptionalInput<String>(secondaryAccessKey),
      secondaryConnectionString = pulumi.Input.asOptionalInput<String>(secondaryConnectionString),
      shardCount = pulumi.Input.asOptionalInput<int>(shardCount),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      sslPort = pulumi.Input.asOptionalInput<int>(sslPort),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenantSettings = pulumi.Input.asOptionalInput<Map<String, String>>(tenantSettings),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      accessKeysAuthenticationEnabled: map['accessKeysAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['accessKeysAuthenticationEnabled'] as bool),
      capacity: map['capacity'] == null ? null : pulumi.Output.create<int>(map['capacity'] as int),
      family: map['family'] == null ? null : pulumi.Output.create<String>(map['family'] as String),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<CacheIdentity>(CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      minimumTlsVersion: map['minimumTlsVersion'] == null ? null : pulumi.Output.create<String>(map['minimumTlsVersion'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nonSslPortEnabled: map['nonSslPortEnabled'] == null ? null : pulumi.Output.create<bool>(map['nonSslPortEnabled'] as bool),
      patchSchedules: map['patchSchedules'] == null ? null : pulumi.Output.create<List<CachePatchSchedule>>(pulumi.Input.decodeList<CachePatchSchedule>(map['patchSchedules'], (value) => CachePatchSchedule.fromMap((value as Map).cast<String, dynamic>()))),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      primaryAccessKey: map['primaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['primaryAccessKey'] as String),
      primaryConnectionString: map['primaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['primaryConnectionString'] as String),
      privateStaticIpAddress: map['privateStaticIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateStaticIpAddress'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      redisConfiguration: map['redisConfiguration'] == null ? null : pulumi.Output.create<CacheRedisConfiguration>(CacheRedisConfiguration.fromMap((map['redisConfiguration'] as Map).cast<String, dynamic>())),
      redisVersion: map['redisVersion'] == null ? null : pulumi.Output.create<String>(map['redisVersion'] as String),
      replicasPerMaster: map['replicasPerMaster'] == null ? null : pulumi.Output.create<int>(map['replicasPerMaster'] as int),
      replicasPerPrimary: map['replicasPerPrimary'] == null ? null : pulumi.Output.create<int>(map['replicasPerPrimary'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryAccessKey: map['secondaryAccessKey'] == null ? null : pulumi.Output.create<String>(map['secondaryAccessKey'] as String),
      secondaryConnectionString: map['secondaryConnectionString'] == null ? null : pulumi.Output.create<String>(map['secondaryConnectionString'] as String),
      shardCount: map['shardCount'] == null ? null : pulumi.Output.create<int>(map['shardCount'] as int),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      sslPort: map['sslPort'] == null ? null : pulumi.Output.create<int>(map['sslPort'] as int),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenantSettings: map['tenantSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tenantSettings'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

