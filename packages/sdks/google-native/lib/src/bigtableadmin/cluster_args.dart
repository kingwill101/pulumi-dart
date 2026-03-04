// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config.dart';
import 'cluster_default_storage_type.dart';
import 'encryption_config.dart';

/// {@template pulumi_bigtableadmin_v2_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_cluster_args_doc}
class ClusterArgs {
  /// Configuration for this cluster.
  final pulumi.Input<ClusterConfig>? clusterConfig;

  /// Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  final pulumi.Input<String> clusterId;

  /// Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  final pulumi.Input<ClusterDefaultStorageType>? defaultStorageType;

  /// Immutable. The encryption configuration for CMEK-protected clusters.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;
  final pulumi.Input<String> instanceId;

  /// Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  final pulumi.Input<String>? location;

  /// The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  final pulumi.Input<int>? serveNodes;

  /// Creates a new [ClusterArgs].
  /// [clusterConfig] Configuration for this cluster.
  /// [clusterId] Required. The ID to be used when referring to the new cluster within its instance, e.g., just `mycluster` rather than `projects/myproject/instances/myinstance/clusters/mycluster`.
  /// [defaultStorageType] Immutable. The type of storage used by this cluster to serve its parent instance's tables, unless explicitly overridden.
  /// [encryptionConfig] Immutable. The encryption configuration for CMEK-protected clusters.
  /// [instanceId] Required.
  /// [location] Immutable. The location where this cluster's nodes and storage reside. For best performance, clients should be located as close as possible to this cluster. Currently only zones are supported, so values should be of the form `projects/{project}/locations/{zone}`.
  /// [name] The unique name of the cluster. Values are of the form `projects/{project}/instances/{instance}/clusters/a-z*`.
  /// [project] Optional.
  /// [serveNodes] The number of nodes in the cluster. If no value is set, Cloud Bigtable automatically allocates nodes based on your data footprint and optimized for 50% storage utilization.
  ClusterArgs({
    this.clusterConfig,
    required this.clusterId,
    this.defaultStorageType,
    this.encryptionConfig,
    required this.instanceId,
    this.location,
    this.name,
    this.project,
    this.serveNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterConfig,
            Map<String, dynamic>
          >(clusterConfig, (value) => value.toMap()),
      'clusterId': clusterId,
      'defaultStorageType':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterDefaultStorageType,
            String
          >(defaultStorageType, (value) => value.wireValue),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'instanceId': instanceId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serveNodes': ?serveNodes,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterConfig: (() {
        final guardedValue = map['clusterConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      defaultStorageType: (() {
        final guardedValue = map['defaultStorageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterDefaultStorageType.fromValue(guardedValue as String),
        );
      })(),
      encryptionConfig: (() {
        final guardedValue = map['encryptionConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EncryptionConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serveNodes: (() {
        final guardedValue = map['serveNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
