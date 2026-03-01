// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_web_application_firewall_policy_args_doc}
/// Arguments for getWebApplicationFirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_network_get_web_application_firewall_policy_args_doc}
class GetWebApplicationFirewallPolicyArgs {
  /// The name of the policy.
  final pulumi.Input<String> policyName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebApplicationFirewallPolicyArgs].
  /// [policyName] The name of the policy.
  /// [resourceGroupName] The name of the resource group.
  GetWebApplicationFirewallPolicyArgs({
    required pulumi.Output<String> policyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebApplicationFirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetWebApplicationFirewallPolicyArgs(
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

