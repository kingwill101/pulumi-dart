// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_vpc_nat_gateway_get_vpc_nat_gateway_args_doc}
/// Arguments for getVpcNatGateway.
/// {@endtemplate}
/// {@macro pulumi_index_get_vpc_nat_gateway_get_vpc_nat_gateway_args_doc}
class GetVpcNatGatewayArgs {
  /// The ID of VPC NAT Gateway.
  final pulumi.Input<String>? id;

  /// The name of VPC NAT Gateway.
  final pulumi.Input<String>? name;

  /// Creates a new [GetVpcNatGatewayArgs].
  /// [id] The ID of VPC NAT Gateway.
  /// [name] The name of VPC NAT Gateway.
  GetVpcNatGatewayArgs({this.id, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name};
  }

  factory GetVpcNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayArgs(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
