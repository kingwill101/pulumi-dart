// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_region_autoscaler_compute_v1_args_doc}
/// Arguments for getRegionAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_region_autoscaler_compute_v1_args_doc}
class GetRegionAutoscalerComputeV1Args {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionAutoscalerComputeV1Args].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionAutoscalerComputeV1Args({
    required this.autoscaler,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionAutoscalerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeV1Args(
      autoscaler: pulumi.Input.fromValue(map['autoscaler'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
