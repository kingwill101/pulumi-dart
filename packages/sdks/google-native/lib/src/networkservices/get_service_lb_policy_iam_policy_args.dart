// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_lb_policy_iam_policy_args_doc}
/// Arguments for getServiceLbPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_iam_policy_args_doc}
class GetServiceLbPolicyIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceLbPolicyId;

  /// Creates a new [GetServiceLbPolicyIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceLbPolicyId] Required.
  GetServiceLbPolicyIamPolicyArgs({
    required pulumi.Output<String> location,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceLbPolicyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceLbPolicyId = pulumi.Input.asInput<String>(serviceLbPolicyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceLbPolicyId': serviceLbPolicyId,
    };
  }

  factory GetServiceLbPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyIamPolicyArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceLbPolicyId: pulumi.Output.create<String>(map['serviceLbPolicyId'] as String),
    );
  }
}

