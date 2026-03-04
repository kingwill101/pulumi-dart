// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_instance_alloydb_v1alpha_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_instance_alloydb_v1alpha_args_doc}
class GetInstanceAlloydbV1alphaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetInstanceAlloydbV1alphaArgs].
  /// [clusterId] Required.
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetInstanceAlloydbV1alphaArgs({
    required this.clusterId,
    required this.instanceId,
    required this.location,
    this.project,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetInstanceAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceAlloydbV1alphaArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      view: (() {
        final guardedValue = map['view'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
