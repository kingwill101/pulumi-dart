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
  GetNatGatewayArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> natGatewayName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      natGatewayName = pulumi.Input.asInput<String>(natGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'natGatewayName': natGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetNatGatewayArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      natGatewayName: pulumi.Output.create<String>(map['natGatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

