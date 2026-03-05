// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_nat_gateway_egress_public_gateway.dart';

class VpcNatGatewayEgress {
  /// List of public gateway IPs
  final pulumi.Input<List<VpcNatGatewayEgressPublicGateway>>? publicGateways;

  /// Creates a new [VpcNatGatewayEgress].
  /// [publicGateways] List of public gateway IPs
  VpcNatGatewayEgress({
    this.publicGateways,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicGateways': ?pulumi.Input.mapOptionalInputValue<List<VpcNatGatewayEgressPublicGateway>, List<Map<String, dynamic>>>(publicGateways, (value) => pulumi.Input.encodeList<VpcNatGatewayEgressPublicGateway, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VpcNatGatewayEgress.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayEgress(
      publicGateways: (() { final guardedValue = map['publicGateways']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VpcNatGatewayEgressPublicGateway>(guardedValue, (value) => VpcNatGatewayEgressPublicGateway.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

