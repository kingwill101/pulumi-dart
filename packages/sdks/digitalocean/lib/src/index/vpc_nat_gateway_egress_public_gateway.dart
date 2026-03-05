// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcNatGatewayEgressPublicGateway {
  /// IPv4 address
  final pulumi.Input<String>? ipv4;

  /// Creates a new [VpcNatGatewayEgressPublicGateway].
  /// [ipv4] IPv4 address
  VpcNatGatewayEgressPublicGateway({
    this.ipv4,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
    };
  }

  factory VpcNatGatewayEgressPublicGateway.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayEgressPublicGateway(
      ipv4: (() { final guardedValue = map['ipv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

