// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetInstanceArgs].
  /// [clusterId] Required.
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetInstanceArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    pulumi.Output<String>? view,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

