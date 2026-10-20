// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_config_response.dart';
import 'encryption_config_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Configuration for this cluster.
  final ClusterConfigResponse? clusterConfig;
  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final String? defaultStorageType;
  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final EncryptionConfigResponse? encryptionConfig;
  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final String? location;
  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final String? name;
  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final int? serveNodes;
  /// The current state of the cluster.
  final String? state;

  /// Creates a new [GetClusterResult].
  /// [clusterConfig] Configuration for this cluster.
  /// [defaultStorageType] Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  /// [encryptionConfig] Immutable. The encryption configuration for CMEK-protected clusters.
  /// [location] Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  /// [name] The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// [serveNodes] The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  /// [state] The current state of the cluster.
  const GetClusterResult({
    this.clusterConfig,
    this.defaultStorageType,
    this.encryptionConfig,
    this.location,
    this.name,
    this.serveNodes,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig': ?clusterConfig?.toMap(),
      'defaultStorageType': ?defaultStorageType,
      'encryptionConfig': ?encryptionConfig?.toMap(),
      'location': ?location,
      'name': ?name,
      'serveNodes': ?serveNodes,
      'state': ?state,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      clusterConfig: (() { final guardedValue = map['clusterConfig']; if (guardedValue == null) return null; return ClusterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      defaultStorageType: (() { final guardedValue = map['defaultStorageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfig: (() { final guardedValue = map['encryptionConfig']; if (guardedValue == null) return null; return EncryptionConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serveNodes: (() { final guardedValue = map['serveNodes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
