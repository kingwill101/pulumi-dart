// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_get_db_nodes_get_db_nodes_args_doc}
/// Arguments for getDbNodes.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_get_db_nodes_get_db_nodes_args_doc}
class GetDbNodesArgs {
  /// The ID of the VM Cluster.
  final pulumi.Input<String> cloudVmCluster;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetDbNodesArgs].
  /// [cloudVmCluster] The ID of the VM Cluster.
  /// [location] The location of the resource.
  /// [project] The project in which the resource belongs. If it
  const GetDbNodesArgs({
    required this.cloudVmCluster,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmCluster': cloudVmCluster,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDbNodesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbNodesArgs(
      cloudVmCluster: pulumi.Input.fromValue(map['cloudVmCluster'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
