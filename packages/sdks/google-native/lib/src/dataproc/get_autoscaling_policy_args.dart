// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_autoscaling_policy_args_doc}
/// Arguments for getAutoscalingPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_autoscaling_policy_args_doc}
class GetAutoscalingPolicyArgs {
  final pulumi.Input<String> autoscalingPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetAutoscalingPolicyArgs].
  /// [autoscalingPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetAutoscalingPolicyArgs({
    required this.autoscalingPolicyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingPolicyId': autoscalingPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetAutoscalingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetAutoscalingPolicyArgs(
      autoscalingPolicyId: pulumi.Input.fromValue(map['autoscalingPolicyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
