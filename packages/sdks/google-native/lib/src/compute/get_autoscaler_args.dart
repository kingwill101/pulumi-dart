// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_autoscaler_args_doc}
/// Arguments for getAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_autoscaler_args_doc}
class GetAutoscalerArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetAutoscalerArgs].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetAutoscalerArgs({
    required pulumi.Output<String> autoscaler,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      autoscaler = pulumi.Input.asInput<String>(autoscaler),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerArgs(
      autoscaler: pulumi.Output.create<String>(map['autoscaler'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

