// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_policy_iam_policy_compute_beta_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_policy_iam_policy_compute_beta_args_doc}
class GetFirewallPolicyIamPolicyComputeBetaArgs {
  final pulumi.Input<int?>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  /// Creates a new [GetFirewallPolicyIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [resource] Required.
  const GetFirewallPolicyIamPolicyComputeBetaArgs({
    this.optionsRequestedPolicyVersion,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'resource': resource,
    };
  }

  factory GetFirewallPolicyIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: (() { final guardedValue = map['optionsRequestedPolicyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
