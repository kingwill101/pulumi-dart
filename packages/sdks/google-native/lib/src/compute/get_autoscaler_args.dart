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
      autoscaler: (map['autoscaler'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

