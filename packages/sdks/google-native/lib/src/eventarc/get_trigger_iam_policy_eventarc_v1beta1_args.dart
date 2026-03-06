// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventarc_v1beta1_get_trigger_iam_policy_eventarc_v1beta1_args_doc}
/// Arguments for getTriggerIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_eventarc_v1beta1_get_trigger_iam_policy_eventarc_v1beta1_args_doc}
class GetTriggerIamPolicyEventarcV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> triggerId;

  /// Creates a new [GetTriggerIamPolicyEventarcV1beta1Args].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [triggerId] Required.
  const GetTriggerIamPolicyEventarcV1beta1Args({
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'triggerId': triggerId,
    };
  }

  factory GetTriggerIamPolicyEventarcV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTriggerIamPolicyEventarcV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggerId: pulumi.Input.fromValue(map['triggerId'] as String),
    );
  }
}

