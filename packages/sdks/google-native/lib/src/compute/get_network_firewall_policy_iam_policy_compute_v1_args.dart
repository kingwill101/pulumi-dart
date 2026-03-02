// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_network_firewall_policy_iam_policy_compute_v1_args_doc}
/// Arguments for getNetworkFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_network_firewall_policy_iam_policy_compute_v1_args_doc}
class GetNetworkFirewallPolicyIamPolicyComputeV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resource;

  /// Creates a new [GetNetworkFirewallPolicyIamPolicyComputeV1Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [resource] Required.
  GetNetworkFirewallPolicyIamPolicyComputeV1Args({
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

  factory GetNetworkFirewallPolicyIamPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetNetworkFirewallPolicyIamPolicyComputeV1Args(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : (map['optionsRequestedPolicyVersion']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resource: (map['resource'] as String).input(),
    );
  }
}

