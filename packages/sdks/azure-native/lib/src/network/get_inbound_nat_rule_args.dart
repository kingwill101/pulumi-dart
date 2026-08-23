// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_inbound_nat_rule_args_doc}
/// Arguments for getInboundNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_inbound_nat_rule_args_doc}
class GetInboundNatRuleArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the inbound NAT rule.
  final pulumi.Input<String> inboundNatRuleName;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInboundNatRuleArgs].
  /// [expand] Expands referenced resources.
  /// [inboundNatRuleName] The name of the inbound NAT rule.
  /// [loadBalancerName] The name of the load balancer.
  /// [resourceGroupName] The name of the resource group.
  const GetInboundNatRuleArgs({
    this.expand,
    required this.inboundNatRuleName,
    required this.loadBalancerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'inboundNatRuleName': inboundNatRuleName,
      'loadBalancerName': loadBalancerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInboundNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundNatRuleArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboundNatRuleName: pulumi.Input.fromValue(map['inboundNatRuleName'] as String),
      loadBalancerName: pulumi.Input.fromValue(map['loadBalancerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
