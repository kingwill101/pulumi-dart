// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_endpoint_policy_iam_policy_args_doc}
/// Arguments for getEndpointPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_endpoint_policy_iam_policy_args_doc}
class GetEndpointPolicyIamPolicyArgs {
  final pulumi.Input<String> endpointPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEndpointPolicyIamPolicyArgs].
  /// [endpointPolicyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetEndpointPolicyIamPolicyArgs({
    required pulumi.Output<String> endpointPolicyId,
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      endpointPolicyId = pulumi.Input.asInput<String>(endpointPolicyId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPolicyId': endpointPolicyId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetEndpointPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointPolicyIamPolicyArgs(
      endpointPolicyId: pulumi.Output.create<String>(map['endpointPolicyId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

