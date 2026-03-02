// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_v1_get_connectivity_test_iam_policy_args_doc}
/// Arguments for getConnectivityTestIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1_get_connectivity_test_iam_policy_args_doc}
class GetConnectivityTestIamPolicyArgs {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestIamPolicyArgs].
  /// [connectivityTestId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectivityTestIamPolicyArgs({
    required this.connectivityTestId,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTestId': connectivityTestId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConnectivityTestIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestIamPolicyArgs(
      connectivityTestId: (map['connectivityTestId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

