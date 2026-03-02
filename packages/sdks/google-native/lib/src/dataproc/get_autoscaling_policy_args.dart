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
  GetAutoscalingPolicyArgs({
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
      autoscalingPolicyId: (map['autoscalingPolicyId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

