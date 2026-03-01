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
    required pulumi.Output<String> connectivityTestId,
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    pulumi.Output<String>? project,
  }) :
      connectivityTestId = pulumi.Input.asInput<String>(connectivityTestId),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTestId': connectivityTestId,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetConnectivityTestIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestIamPolicyArgs(
      connectivityTestId: pulumi.Output.create<String>(map['connectivityTestId'] as String),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

