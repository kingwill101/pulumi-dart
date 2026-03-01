// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_region_autoscaler_compute_beta_args_doc}
/// Arguments for getRegionAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_region_autoscaler_compute_beta_args_doc}
class GetRegionAutoscalerComputeBetaArgs {
  final pulumi.Input<String> autoscaler;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetRegionAutoscalerComputeBetaArgs].
  /// [autoscaler] Required.
  /// [project] Optional.
  /// [region] Required.
  GetRegionAutoscalerComputeBetaArgs({
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

  factory GetRegionAutoscalerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionAutoscalerComputeBetaArgs(
      autoscaler: pulumi.Output.create<String>(map['autoscaler'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

