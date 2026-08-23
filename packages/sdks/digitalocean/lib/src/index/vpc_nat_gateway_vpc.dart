// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcNatGatewayVpc {
  /// Boolean flag indicating if this should be the default gateway in this VPC
  final pulumi.Input<bool>? defaultGateway;
  /// The private IP of the VPC NAT Gateway
  final pulumi.Input<String>? gatewayIp;
  /// The ID of the ingress subnet in the VPC
  final pulumi.Input<String>? subnetUuid;
  /// The ID of the ingress VPC
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [VpcNatGatewayVpc].
  /// [defaultGateway] Boolean flag indicating if this should be the default gateway in this VPC
  /// [gatewayIp] The private IP of the VPC NAT Gateway
  /// [subnetUuid] The ID of the ingress subnet in the VPC
  /// [vpcUuid] The ID of the ingress VPC
  const VpcNatGatewayVpc({
    this.defaultGateway,
    this.gatewayIp,
    this.subnetUuid,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGateway': ?defaultGateway,
      'gatewayIp': ?gatewayIp,
      'subnetUuid': ?subnetUuid,
      'vpcUuid': vpcUuid,
    };
  }

  factory VpcNatGatewayVpc.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayVpc(
      defaultGateway: (() { final guardedValue = map['defaultGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayIp: (() { final guardedValue = map['gatewayIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetUuid: (() { final guardedValue = map['subnetUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}
