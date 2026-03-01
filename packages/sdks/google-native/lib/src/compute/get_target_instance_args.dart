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
  GetTargetInstanceArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> targetInstance,
    required pulumi.Output<String> zone,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      targetInstance = pulumi.Input.asInput<String>(targetInstance),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'targetInstance': targetInstance,
      'zone': zone,
    };
  }

  factory GetTargetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetInstance: pulumi.Output.create<String>(map['targetInstance'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

