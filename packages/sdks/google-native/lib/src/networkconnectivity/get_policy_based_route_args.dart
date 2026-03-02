// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_policy_based_route_args_doc}
/// Arguments for getPolicyBasedRoute.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_policy_based_route_args_doc}
class GetPolicyBasedRouteArgs {
  final pulumi.Input<String> policyBasedRouteId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPolicyBasedRouteArgs].
  /// [policyBasedRouteId] Required.
  /// [project] Optional.
  GetPolicyBasedRouteArgs({
    required this.policyBasedRouteId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyBasedRouteId': policyBasedRouteId,
      'project': ?project,
    };
  }

  factory GetPolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteArgs(
      policyBasedRouteId: (map['policyBasedRouteId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

