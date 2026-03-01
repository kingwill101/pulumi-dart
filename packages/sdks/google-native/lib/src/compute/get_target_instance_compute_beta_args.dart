// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_target_instance_compute_beta_args_doc}
/// Arguments for getTargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_target_instance_compute_beta_args_doc}
class GetTargetInstanceComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetInstance;
  final pulumi.Input<String> zone;

  /// Creates a new [GetTargetInstanceComputeBetaArgs].
  /// [project] Optional.
  /// [targetInstance] Required.
  /// [zone] Required.
  GetTargetInstanceComputeBetaArgs({
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

  factory GetTargetInstanceComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetInstanceComputeBetaArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      targetInstance: pulumi.Output.create<String>(map['targetInstance'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

