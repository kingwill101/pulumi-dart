// ignore_for_file: unused_element, unnecessary_cast


class VpcNatGatewayVpc {
  /// Boolean flag indicating if this should be the default gateway in this VPC
  final bool? defaultGateway;
  /// The private IP of the VPC NAT Gateway
  final String? gatewayIp;
  /// The ID of the ingress VPC
  final String vpcUuid;

  /// Creates a new [VpcNatGatewayVpc].
  /// [defaultGateway] Boolean flag indicating if this should be the default gateway in this VPC
  /// [gatewayIp] The private IP of the VPC NAT Gateway
  /// [vpcUuid] The ID of the ingress VPC
  VpcNatGatewayVpc({
    this.defaultGateway,
    this.gatewayIp,
    required this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultGateway': ?defaultGateway,
      'gatewayIp': ?gatewayIp,
      'vpcUuid': vpcUuid,
    };
  }

  factory VpcNatGatewayVpc.fromMap(Map<String, dynamic> map) {
    return VpcNatGatewayVpc(
      defaultGateway: map['defaultGateway'] == null ? null : map['defaultGateway'] as bool,
      gatewayIp: map['gatewayIp'] == null ? null : map['gatewayIp'] as String,
      vpcUuid: map['vpcUuid'] as String,
    );
  }
}

