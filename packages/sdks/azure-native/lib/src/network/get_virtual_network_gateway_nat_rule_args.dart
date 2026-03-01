// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_gateway_nat_rule_args_doc}
/// Arguments for getVirtualNetworkGatewayNatRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_gateway_nat_rule_args_doc}
class GetVirtualNetworkGatewayNatRuleArgs {
  /// The name of the nat rule.
  final pulumi.Input<String> natRuleName;
  /// The resource group name of the Virtual Network Gateway.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the gateway.
  final pulumi.Input<String> virtualNetworkGatewayName;

  /// Creates a new [GetVirtualNetworkGatewayNatRuleArgs].
  /// [natRuleName] The name of the nat rule.
  /// [resourceGroupName] The resource group name of the Virtual Network Gateway.
  /// [virtualNetworkGatewayName] The name of the gateway.
  GetVirtualNetworkGatewayNatRuleArgs({
    required pulumi.Output<String> natRuleName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkGatewayName,
  }) :
      natRuleName = pulumi.Input.asInput<String>(natRuleName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkGatewayName = pulumi.Input.asInput<String>(virtualNetworkGatewayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'natRuleName': natRuleName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkGatewayName': virtualNetworkGatewayName,
    };
  }

  factory GetVirtualNetworkGatewayNatRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkGatewayNatRuleArgs(
      natRuleName: pulumi.Output.create<String>(map['natRuleName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkGatewayName: pulumi.Output.create<String>(map['virtualNetworkGatewayName'] as String),
    );
  }
}

