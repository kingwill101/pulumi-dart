// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_egress_public_gateway.dart';

class VpcNatGatewayEgress {
  /// List of public gateway IPs
  final List<VpcNatGatewayEgressPublicGateway>? publicGateways;

  /// Creates a new [VpcNatGatewayEgress].
  /// [publicGateways] List of public gateway IPs
  VpcNatGatewayEgress({
    this.publicGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicGateways': ?publicGateways == null ? null : pulumi.Input.encodeList<VpcNatGatewayEgressPublicGateway, Map<String, dynamic>>(publicGateways!, (value) => value.toMap()),
    };
  }

  factory VpcNatGatewayEgress.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayEgress(
      publicGateways: map['publicGateways'] == null ? null : pulumi.Input.decodeList<VpcNatGatewayEgressPublicGateway>(map['publicGateways'], (value) => VpcNatGatewayEgressPublicGateway.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

