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
    required pulumi.Output<String> autoscaler,
    pulumi.Output<String>? project,
    required pulumi.Output<String> region,
  }) :
      autoscaler = pulumi.Input.asInput<String>(autoscaler),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'project': ?project,
      'region': region,
    };
  }

  factory GetRegionAutoscalerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeV1Args(
      autoscaler: pulumi.Output.create<String>(map['autoscaler'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

