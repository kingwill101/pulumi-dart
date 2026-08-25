// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The ID of the alloydb cluster that the instance belongs to.
  /// 'alloydb_cluster_id'
  final pulumi.Input<String> clusterId;
  /// The ID of the alloydb instance.
  /// 'alloydb_instance_id'
  final pulumi.Input<String> instanceId;
  /// (optional)
  /// The canonical id of the location.If it is not provided, the provider project is used. For example: us-east1.
  final pulumi.Input<String?>? location;
  /// (optional)
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetInstanceArgs].
  /// [clusterId] The ID of the alloydb cluster that the instance belongs to.
  /// [instanceId] The ID of the alloydb instance.
  /// [location] (optional)
  /// [project] (optional)
  const GetInstanceArgs({
    required this.clusterId,
    required this.instanceId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceId': instanceId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
