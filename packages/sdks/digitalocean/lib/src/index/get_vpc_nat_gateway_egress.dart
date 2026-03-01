// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_nat_gateway_egress_public_gateway.dart';

class GetVpcNatGatewayEgress {
  /// List of public gateway IPs
  final List<GetVpcNatGatewayEgressPublicGateway> publicGateways;

  /// Creates a new [GetVpcNatGatewayEgress].
  /// [publicGateways] List of public gateway IPs
  GetVpcNatGatewayEgress({
    required this.publicGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicGateways': pulumi.Input.encodeList<GetVpcNatGatewayEgressPublicGateway, Map<String, dynamic>>(publicGateways, (value) => value.toMap()),
    };
  }

  factory GetVpcNatGatewayEgress.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayEgress(
      publicGateways: pulumi.Input.decodeList<GetVpcNatGatewayEgressPublicGateway>(map['publicGateways'], (value) => GetVpcNatGatewayEgressPublicGateway.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

