// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaler_autoscaling_policy.dart';

/// {@template pulumi_compute_autoscaler_autoscaler_args_doc}
/// The set of arguments for Autoscaler.
/// {@endtemplate}
/// {@macro pulumi_compute_autoscaler_autoscaler_args_doc}
class AutoscalerArgs {
  /// The configuration parameters for the autoscaling algorithm. You can
  /// define one or more of the policies for an autoscaler: cpuUtilization,
  /// customMetricUtilizations, and loadBalancingUtilization.
  /// If none of these are specified, the default will be to autoscale based
  /// on cpuUtilization to 0.6 or 60%.
  /// Structure is documented below.
  final pulumi.Input<AutoscalerAutoscalingPolicy> autoscalingPolicy;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// URL of the managed instance group that this autoscaler will scale.
  final pulumi.Input<String> target;
  /// URL of the zone where the instance group resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [AutoscalerArgs].
  /// [autoscalingPolicy] The configuration parameters for the autoscaling algorithm. You can
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [project] The ID of the project in which the resource belongs.
  /// [target] URL of the managed instance group that this autoscaler will scale.
  /// [zone] URL of the zone where the instance group resides.
  const AutoscalerArgs({
    required this.autoscalingPolicy,
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
    required this.target,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicy': pulumi.Input.mapInputValue<AutoscalerAutoscalingPolicy, Map<String, dynamic>>(autoscalingPolicy, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'target': target,
      'zone': ?zone,
    };
  }

  factory AutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return AutoscalerArgs(
      autoscalingPolicy: pulumi.Input.fromValue(AutoscalerAutoscalingPolicy.fromMap((map['autoscalingPolicy']! as Map).cast<String, dynamic>())),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
