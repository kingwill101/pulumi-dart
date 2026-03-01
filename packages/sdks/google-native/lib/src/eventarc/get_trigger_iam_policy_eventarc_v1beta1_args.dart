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
  GetTriggerIamPolicyEventarcV1beta1Args({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> triggerId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      triggerId = pulumi.Input.asInput<String>(triggerId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      triggerId: pulumi.Output.create<String>(map['triggerId'] as String),
    );
  }
}

