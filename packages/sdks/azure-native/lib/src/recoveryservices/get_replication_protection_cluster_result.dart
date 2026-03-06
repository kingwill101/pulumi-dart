// ignore_for_file: unused_element, unnecessary_cast

import 'replication_protection_cluster_properties_response.dart';

/// Result data returned by getReplicationProtectionCluster.
class GetReplicationProtectionClusterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The protection cluster Id.
  final String id;
  /// The name of the protection cluster.
  final String name;
  /// The custom data.
  final ReplicationProtectionClusterPropertiesResponse properties;
  /// The Type of the object.
  final String type;

  /// Creates a new [GetReplicationProtectionClusterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] The protection cluster Id.
  /// [name] The name of the protection cluster.
  /// [properties] The custom data.
  /// [type] The Type of the object.
  const GetReplicationProtectionClusterResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetReplicationProtectionClusterResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationProtectionClusterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      properties: ReplicationProtectionClusterPropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

