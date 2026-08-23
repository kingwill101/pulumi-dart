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
  const GetAutoscalerArgs({
    required this.autoscaler,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerArgs(
      autoscaler: pulumi.Input.fromValue(map['autoscaler'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
