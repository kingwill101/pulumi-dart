// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_firewall_policy_iam_policy_compute_v1_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_firewall_policy_iam_policy_compute_v1_args_doc}
class GetFirewallPolicyIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  /// Creates a new [GetFirewallPolicyIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [resource] Required.
  GetFirewallPolicyIamPolicyComputeV1Args({
    this.optionsRequestedPolicyVersion,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'resource': resource,
    };
  }

  factory GetFirewallPolicyIamPolicyComputeV1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
