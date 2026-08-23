// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_target_instance_args_doc}
/// Arguments for getTargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_target_instance_args_doc}
class GetTargetInstanceArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  /// Creates a new [GetTargetInstanceArgs].
  /// [project] Optional.
  /// [targetInstance] Required.
  /// [zone] Required.
  const GetTargetInstanceArgs({
    this.project,
    required this.targetInstance,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetInstance': targetInstance,
      'zone': zone,
    };
  }

  factory GetTargetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetInstance: pulumi.Input.fromValue(map['targetInstance'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
