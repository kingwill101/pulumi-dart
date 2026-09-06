// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'redis_access_keys_response.dart';
import 'redis_common_properties_redis_configuration_response.dart';
import 'redis_instance_details_response.dart';
import 'redis_linked_server_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRedis.
class GetRedisResult {
  /// The keys of the Redis cache - not set if this object is not the response to Create or Update redis cache
  final RedisAccessKeysResponse? accessKeys;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Authentication to Redis through access keys is disabled when set as true. Default value is false.
  final bool? disableAccessKeyAuthentication;
  /// Specifies whether the non-ssl Redis server port (6379) is enabled.
  final bool? enableNonSslPort;
  /// Redis host name.
  final String? hostName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// List of the Redis instances associated with the cache
  final List<RedisInstanceDetailsResponse>? instances;
  /// List of the linked servers associated with the cache
  final List<RedisLinkedServerResponse>? linkedServers;
  /// The geo-location where the resource lives
  final String? location;
  /// Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2')
  final String? minimumTlsVersion;
  /// The name of the resource
  final String? name;
  /// Redis non-SSL port.
  final int? port;
  /// List of private endpoint connection associated with the specified redis cache
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Redis instance provisioning status.
  final String? provisioningState;
  /// Whether or not public endpoint access is allowed for this cache.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method.
  final String? publicNetworkAccess;
  /// All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
  final RedisCommonPropertiesRedisConfigurationResponse? redisConfiguration;
  /// Redis version. This should be in the form 'major[.minor]' (only 'major' is required) or the value 'latest' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is 'latest'.
  final String? redisVersion;
  /// The number of replicas to be created per primary.
  final int? replicasPerMaster;
  /// The number of replicas to be created per primary.
  final int? replicasPerPrimary;
  /// The number of shards to be created on a Premium Cluster Cache.
  final int? shardCount;
  /// The SKU of the Redis cache to deploy.
  final SkuResponse? sku;
  /// Redis SSL port.
  final int? sslPort;
  /// Static IP address. Optionally, may be specified when deploying a Redis cache inside an existing Azure Virtual Network; auto assigned by default.
  final String? staticIP;
  /// The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
  final String? subnetId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// A dictionary of tenant settings
  final Map<String, String>? tenantSettings;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
  final String? updateChannel;
  /// Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
  final String? zonalAllocationPolicy;
  /// The availability zones.
  final List<String>? zones;

  /// Creates a new [GetRedisResult].
  /// [accessKeys] The keys of the Redis cache - not set if this object is not the response to Create or Update redis cache
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableAccessKeyAuthentication] Authentication to Redis through access keys is disabled when set as true. Default value is false.
  /// [enableNonSslPort] Specifies whether the non-ssl Redis server port (6379) is enabled.
  /// [hostName] Redis host name.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [instances] List of the Redis instances associated with the cache
  /// [linkedServers] List of the linked servers associated with the cache
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2')
  /// [name] The name of the resource
  /// [port] Redis non-SSL port.
  /// [privateEndpointConnections] List of private endpoint connection associated with the specified redis cache
  /// [provisioningState] Redis instance provisioning status.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this cache.  Value is optional but if passed in, must be 'Enabled' or 'Disabled'. If 'Disabled', private endpoints are the exclusive access method.
  /// [redisConfiguration] All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta, maxmemory-policy,notify-keyspace-events, aof-backup-enabled, aof-storage-connection-string-0, aof-storage-connection-string-1 etc.
  /// [redisVersion] Redis version. This should be in the form 'major[.minor]' (only 'major' is required) or the value 'latest' which refers to the latest stable Redis version that is available. Supported versions: 4.0, 6.0 (latest). Default value is 'latest'.
  /// [replicasPerMaster] The number of replicas to be created per primary.
  /// [replicasPerPrimary] The number of replicas to be created per primary.
  /// [shardCount] The number of shards to be created on a Premium Cluster Cache.
  /// [sku] The SKU of the Redis cache to deploy.
  /// [sslPort] Redis SSL port.
  /// [staticIP] Static IP address. Optionally, may be specified when deploying a Redis cache inside an existing Azure Virtual Network; auto assigned by default.
  /// [subnetId] The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantSettings] A dictionary of tenant settings
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updateChannel] Optional: Specifies the update channel for the monthly Redis updates your Redis Cache will receive. Caches using 'Preview' update channel get latest Redis updates at least 4 weeks ahead of 'Stable' channel caches. Default value is 'Stable'.
  /// [zonalAllocationPolicy] Optional: Specifies how availability zones are allocated to the Redis cache. 'Automatic' enables zone redundancy and Azure will automatically select zones based on regional availability and capacity. 'UserDefined' will select availability zones passed in by you using the 'zones' parameter. 'NoZones' will produce a non-zonal cache. If 'zonalAllocationPolicy' is not passed, it will be set to 'UserDefined' when zones are passed in, otherwise, it will be set to 'Automatic' in regions where zones are supported and 'NoZones' in regions where zones are not supported.
  /// [zones] The availability zones.
  GetRedisResult({
    this.accessKeys,
    this.azureApiVersion,
    bool? disableAccessKeyAuthentication,
    bool? enableNonSslPort,
    this.hostName,
    this.id,
    this.identity,
    this.instances,
    this.linkedServers,
    this.location,
    this.minimumTlsVersion,
    this.name,
    this.port,
    this.privateEndpointConnections,
    this.provisioningState,
    this.publicNetworkAccess,
    this.redisConfiguration,
    this.redisVersion,
    this.replicasPerMaster,
    this.replicasPerPrimary,
    this.shardCount,
    this.sku,
    this.sslPort,
    this.staticIP,
    this.subnetId,
    this.systemData,
    this.tags,
    this.tenantSettings,
    this.type,
    this.updateChannel,
    this.zonalAllocationPolicy,
    this.zones,
  }) : disableAccessKeyAuthentication = disableAccessKeyAuthentication ?? false, enableNonSslPort = enableNonSslPort ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeys': ?accessKeys?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'disableAccessKeyAuthentication': ?disableAccessKeyAuthentication,
      'enableNonSslPort': ?enableNonSslPort,
      'hostName': ?hostName,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<RedisInstanceDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'linkedServers': ?(() { final guardedValue = linkedServers; if (guardedValue == null) return null; return pulumi.Input.encodeList<RedisLinkedServerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': ?name,
      'port': ?port,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'redisConfiguration': ?redisConfiguration?.toMap(),
      'redisVersion': ?redisVersion,
      'replicasPerMaster': ?replicasPerMaster,
      'replicasPerPrimary': ?replicasPerPrimary,
      'shardCount': ?shardCount,
      'sku': ?sku?.toMap(),
      'sslPort': ?sslPort,
      'staticIP': ?staticIP,
      'subnetId': ?subnetId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantSettings': ?tenantSettings,
      'type': ?type,
      'updateChannel': ?updateChannel,
      'zonalAllocationPolicy': ?zonalAllocationPolicy,
      'zones': ?zones,
    };
  }

  factory GetRedisResult.fromMap(Map<String, dynamic> map) {
    return GetRedisResult(
      accessKeys: (() { final guardedValue = map['accessKeys']; if (guardedValue == null) return null; return RedisAccessKeysResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableAccessKeyAuthentication: (() { final guardedValue = map['disableAccessKeyAuthentication']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNonSslPort: (() { final guardedValue = map['enableNonSslPort']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostName: (() { final guardedValue = map['hostName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RedisInstanceDetailsResponse>(guardedValue, (value) => RedisInstanceDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      linkedServers: (() { final guardedValue = map['linkedServers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RedisLinkedServerResponse>(guardedValue, (value) => RedisLinkedServerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redisConfiguration: (() { final guardedValue = map['redisConfiguration']; if (guardedValue == null) return null; return RedisCommonPropertiesRedisConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      redisVersion: (() { final guardedValue = map['redisVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicasPerMaster: (() { final guardedValue = map['replicasPerMaster']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      replicasPerPrimary: (() { final guardedValue = map['replicasPerPrimary']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      shardCount: (() { final guardedValue = map['shardCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sslPort: (() { final guardedValue = map['sslPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      staticIP: (() { final guardedValue = map['staticIP']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantSettings: (() { final guardedValue = map['tenantSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateChannel: (() { final guardedValue = map['updateChannel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zonalAllocationPolicy: (() { final guardedValue = map['zonalAllocationPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
