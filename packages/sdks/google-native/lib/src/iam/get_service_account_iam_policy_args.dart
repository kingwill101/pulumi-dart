// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_service_account_iam_policy_args_doc}
/// Arguments for getServiceAccountIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_service_account_iam_policy_args_doc}
class GetServiceAccountIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceAccountId;

  /// Creates a new [GetServiceAccountIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [serviceAccountId] Required.
  GetServiceAccountIamPolicyArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceAccountId,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAccountId = pulumi.Input.asInput<String>(serviceAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetServiceAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAccountId: pulumi.Output.create<String>(map['serviceAccountId'] as String),
    );
  }
}

