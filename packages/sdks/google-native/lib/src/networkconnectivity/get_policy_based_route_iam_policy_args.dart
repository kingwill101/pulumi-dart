// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_policy_based_route_iam_policy_args_doc}
/// Arguments for getPolicyBasedRouteIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_policy_based_route_iam_policy_args_doc}
class GetPolicyBasedRouteIamPolicyArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> policyBasedRouteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyBasedRouteIamPolicyArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [policyBasedRouteId] Required.
  /// [project] Optional.
  GetPolicyBasedRouteIamPolicyArgs({
    this.optionsRequestedPolicyVersion,
    required this.policyBasedRouteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'policyBasedRouteId': policyBasedRouteId,
      'project': ?project,
    };
  }

  factory GetPolicyBasedRouteIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteIamPolicyArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion'] as int).input(),
      policyBasedRouteId: (map['policyBasedRouteId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

