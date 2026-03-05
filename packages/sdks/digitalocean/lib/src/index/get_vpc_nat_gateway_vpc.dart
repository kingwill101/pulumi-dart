// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcNatGatewayVpc {
  /// Indicates if this is the default VPC NAT Gateway in the VPC
  final pulumi.Input<bool> defaultGateway;
  /// Gateway IP of the VPC NAT Gateway
  final pulumi.Input<String> gatewayIp;
  /// ID of the ingress VPC
  final pulumi.Input<String> vpcUuid;

  /// Creates a new [GetVpcNatGatewayVpc].
  /// [defaultGateway] Indicates if this is the default VPC NAT Gateway in the VPC
  /// [gatewayIp] Gateway IP of the VPC NAT Gateway
  /// [vpcUuid] ID of the ingress VPC
  GetVpcNatGatewayVpc({
    required this.defaultGateway,
    required this.gatewayIp,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGateway': defaultGateway,
      'gatewayIp': gatewayIp,
      'vpcUuid': vpcUuid,
    };
  }

  factory GetVpcNatGatewayVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayVpc(
      defaultGateway: pulumi.Input.fromValue(map['defaultGateway'] as bool),
      gatewayIp: pulumi.Input.fromValue(map['gatewayIp'] as String),
      vpcUuid: pulumi.Input.fromValue(map['vpcUuid'] as String),
    );
  }
}

