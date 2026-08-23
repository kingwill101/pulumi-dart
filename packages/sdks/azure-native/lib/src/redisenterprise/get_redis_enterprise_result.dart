// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_properties_response_encryption.dart';
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'sku_response.dart';

/// Result data returned by getRedisEnterprise.
class GetRedisEnterpriseResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Encryption-at-rest configuration for the cluster.
  final ClusterPropertiesResponseEncryption? encryption;
  /// Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
  final String? highAvailability;
  /// DNS name of the cluster endpoint
  final String hostName;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the resource.
  final ManagedServiceIdentityResponse? identity;
  /// Distinguishes the kind of cluster. Read-only.
  final String kind;
  /// The geo-location where the resource lives
  final String location;
  /// The minimum TLS version for the cluster to support, e.g. '1.2'. Newer versions can be added in the future. Note that TLS 1.0 and TLS 1.1 are now completely obsolete -- you cannot use them. They are mentioned only for the sake of consistency with old API versions.
  final String? minimumTlsVersion;
  /// The name of the resource
  final String name;
  /// List of private endpoint connections associated with the specified Redis Enterprise cluster
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Current provisioning status of the cluster
  final String provisioningState;
  /// Whether or not public network traffic can access the Redis cluster. Only 'Enabled' or 'Disabled' can be set. null is returned only for clusters created using an old API version which do not have this property and cannot be set.
  final String publicNetworkAccess;
  /// Version of redis the cluster supports, e.g. '6'
  final String redisVersion;
  /// Explains the current redundancy strategy of the cluster, which affects the expected SLA.
  final String redundancyMode;
  /// Current resource status of the cluster
  final String resourceState;
  /// The SKU to create, which affects price, performance, and features.
  final SkuResponse sku;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The Availability Zones where this cluster will be deployed.
  final List<String>? zones;

  /// Creates a new [GetRedisEnterpriseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryption] Encryption-at-rest configuration for the cluster.
  /// [highAvailability] Enabled by default. If highAvailability is disabled, the data set is not replicated. This affects the availability SLA, and increases the risk of data loss.
  /// [hostName] DNS name of the cluster endpoint
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the resource.
  /// [kind] Distinguishes the kind of cluster. Read-only.
  /// [location] The geo-location where the resource lives
  /// [minimumTlsVersion] The minimum TLS version for the cluster to support, e.g. '1.2'. Newer versions can be added in the future. Note that TLS 1.0 and TLS 1.1 are now completely obsolete -- you cannot use them. They are mentioned only for the sake of consistency with old API versions.
  /// [name] The name of the resource
  /// [privateEndpointConnections] List of private endpoint connections associated with the specified Redis Enterprise cluster
  /// [provisioningState] Current provisioning status of the cluster
  /// [publicNetworkAccess] Whether or not public network traffic can access the Redis cluster. Only 'Enabled' or 'Disabled' can be set. null is returned only for clusters created using an old API version which do not have this property and cannot be set.
  /// [redisVersion] Version of redis the cluster supports, e.g. '6'
  /// [redundancyMode] Explains the current redundancy strategy of the cluster, which affects the expected SLA.
  /// [resourceState] Current resource status of the cluster
  /// [sku] The SKU to create, which affects price, performance, and features.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zones] The Availability Zones where this cluster will be deployed.
  const GetRedisEnterpriseResult({
    required this.azureApiVersion,
    this.encryption,
    this.highAvailability,
    required this.hostName,
    required this.id,
    this.identity,
    required this.kind,
    required this.location,
    this.minimumTlsVersion,
    required this.name,
    required this.privateEndpointConnections,
    required this.provisioningState,
    required this.publicNetworkAccess,
    required this.redisVersion,
    required this.redundancyMode,
    required this.resourceState,
    required this.sku,
    this.tags,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryption': ?encryption?.toMap(),
      'highAvailability': ?highAvailability,
      'hostName': hostName,
      'id': id,
      'identity': ?identity?.toMap(),
      'kind': kind,
      'location': location,
      'minimumTlsVersion': ?minimumTlsVersion,
      'name': name,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': publicNetworkAccess,
      'redisVersion': redisVersion,
      'redundancyMode': redundancyMode,
      'resourceState': resourceState,
      'sku': sku.toMap(),
      'tags': ?tags,
      'type': type,
      'zones': ?zones,
    };
  }

  factory GetRedisEnterpriseResult.fromMap(Map<String, dynamic> map) {
    return GetRedisEnterpriseResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return ClusterPropertiesResponseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostName: map['hostName'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: map['kind'] as String,
      location: map['location'] as String,
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      redisVersion: map['redisVersion'] as String,
      redundancyMode: map['redundancyMode'] as String,
      resourceState: map['resourceState'] as String,
      sku: SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
