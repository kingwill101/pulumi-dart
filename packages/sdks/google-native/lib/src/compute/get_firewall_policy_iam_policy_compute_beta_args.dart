// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_firewall_policy_iam_policy_compute_beta_args_doc}
/// Arguments for getFirewallPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_firewall_policy_iam_policy_compute_beta_args_doc}
class GetFirewallPolicyIamPolicyComputeBetaArgs {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String> resource;

  /// Creates a new [GetFirewallPolicyIamPolicyComputeBetaArgs].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [resource] Required.
  GetFirewallPolicyIamPolicyComputeBetaArgs({
    pulumi.Output<int>? optionsRequestedPolicyVersion,
    required pulumi.Output<String> resource,
  }) :
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'resource': resource,
    };
  }

  factory GetFirewallPolicyIamPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyIamPolicyComputeBetaArgs(
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : pulumi.Output.create<int>(map['optionsRequestedPolicyVersion'] as int),
      resource: pulumi.Output.create<String>(map['resource'] as String),
    );
  }
}

