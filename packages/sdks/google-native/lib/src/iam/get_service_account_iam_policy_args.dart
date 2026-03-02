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
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'serviceAccountId': serviceAccountId,
    };
  }

  factory GetServiceAccountIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceAccountIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      serviceAccountId: (map['serviceAccountId'] as String).input(),
    );
  }
}

