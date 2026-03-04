// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_network_firewall_policy_iam_policy_compute_beta_args_doc}
/// Arguments for getNetworkFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_network_firewall_policy_iam_policy_compute_beta_args_doc}
class GetNetworkFirewallPolicyIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetNetworkFirewallPolicyIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetNetworkFirewallPolicyIamPolicyComputeBetaArgs({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'resource': resource,
    };
  }

  factory GetNetworkFirewallPolicyIamPolicyComputeBetaArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkFirewallPolicyIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: (() {
        final guardedValue = map['optionsRequestedPolicyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resource: pulumi.Input.fromValue(map['resource'] as String),
    );
  }
}
