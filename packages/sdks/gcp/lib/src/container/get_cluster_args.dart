// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_container_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// The location (zone or region) this cluster has been
  /// created in. One of `location`, `region`, `zone`, or a provider-level `zone` must
  /// be specified.
  final pulumi.Input<String?>? location;
  /// The name of the cluster.
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Whether to skip refreshing the GKE
  /// cluster's node pool list during the data source read. Setting this to `true`
  /// prevents the provider from querying the GKE API for node pools, which resolves
  /// long read times on clusters with a large number of node pools. When enabled,
  /// the `nodePool` attribute will be empty (`[]`), even if node pools exist. See
  /// the resource documentation
  /// for details.
  ///
  /// - - -
  final pulumi.Input<bool?>? skipNodePoolRefresh;

  /// Creates a new [GetClusterArgs].
  /// [location] The location (zone or region) this cluster has been
  /// [name] The name of the cluster.
  /// [project] The project in which the resource belongs. If it
  /// [skipNodePoolRefresh] Whether to skip refreshing the GKE
  const GetClusterArgs({
    this.location,
    required this.name,
    this.project,
    this.skipNodePoolRefresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': name,
      'project': ?project,
      'skipNodePoolRefresh': ?skipNodePoolRefresh,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipNodePoolRefresh: (() { final guardedValue = map['skipNodePoolRefresh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
