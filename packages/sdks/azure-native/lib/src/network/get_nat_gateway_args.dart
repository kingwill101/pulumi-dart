// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_nat_gateway_args_doc}
/// Arguments for getNatGateway.
/// {@endtemplate}
/// {@macro pulumi_network_get_nat_gateway_args_doc}
class GetNatGatewayArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the nat gateway.
  final pulumi.Input<String> natGatewayName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNatGatewayArgs].
  /// [expand] Expands referenced resources.
  /// [natGatewayName] The name of the nat gateway.
  /// [resourceGroupName] The name of the resource group.
  const GetNatGatewayArgs({
    this.expand,
    required this.natGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'natGatewayName': natGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayName: pulumi.Input.fromValue(map['natGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
