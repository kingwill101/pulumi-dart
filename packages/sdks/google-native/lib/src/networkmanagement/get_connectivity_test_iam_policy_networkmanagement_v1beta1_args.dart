// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_v1beta1_get_connectivity_test_iam_policy_networkmanagement_v1beta1_args_doc}
/// Arguments for getConnectivityTestIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1beta1_get_connectivity_test_iam_policy_networkmanagement_v1beta1_args_doc}
class GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args].
  /// [connectivityTestId] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args({
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

  factory GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestIamPolicyNetworkmanagementV1beta1Args(
      connectivityTestId: (map['connectivityTestId'] as String).input(),
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

