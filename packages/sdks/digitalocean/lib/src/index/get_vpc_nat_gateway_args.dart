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
  GetVpcNatGatewayArgs({
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetVpcNatGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayArgs(
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

