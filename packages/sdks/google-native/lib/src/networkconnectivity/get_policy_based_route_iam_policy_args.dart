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
  const GetPolicyBasedRouteIamPolicyArgs({
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
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      policyBasedRouteId: pulumi.Input.fromValue(map['policyBasedRouteId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

