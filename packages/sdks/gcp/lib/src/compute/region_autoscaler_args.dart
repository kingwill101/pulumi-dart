// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_autoscaler_autoscaling_policy.dart';

/// {@template pulumi_compute_region_autoscaler_region_autoscaler_args_doc}
/// The set of arguments for RegionAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_region_autoscaler_region_autoscaler_args_doc}
class RegionAutoscalerArgs {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  final pulumi.Input<RegionAutoscalerAutoscalingPolicy> autoscalingPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where the instance group resides.
  final pulumi.Input<String>? region;
  /// URL of the managed instance group that this autoscaler will scale.
  final pulumi.Input<String> target;

  /// Creates a new [RegionAutoscalerArgs].
  /// [autoscalingPolicy] The configuration parameters for the autoscaling algorithm. You can
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where the instance group resides.
  /// [target] URL of the managed instance group that this autoscaler will scale.
  const RegionAutoscalerArgs({
    required this.autoscalingPolicy,
    this.description,
    this.name,
    this.project,
    this.region,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': pulumi.Input.mapInputValue<RegionAutoscalerAutoscalingPolicy, Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'target': target,
    };
  }

  factory RegionAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return RegionAutoscalerArgs(
      autoscalingPolicy: pulumi.Input.fromValue(RegionAutoscalerAutoscalingPolicy.fromMap((map['autoscalingPolicy']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}

