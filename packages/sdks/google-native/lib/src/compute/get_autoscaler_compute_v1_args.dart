// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_autoscaler_compute_v1_args_doc}
/// Arguments for getAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_autoscaler_compute_v1_args_doc}
class GetAutoscalerComputeV1Args {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetAutoscalerComputeV1Args].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetAutoscalerComputeV1Args({
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

  factory GetAutoscalerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetAutoscalerComputeV1Args(
      autoscaler: (map['autoscaler'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

