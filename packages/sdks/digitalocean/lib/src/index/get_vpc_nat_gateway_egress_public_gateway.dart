// ignore_for_file: unused_element, unnecessary_cast


class GetVpcNatGatewayEgressPublicGateway {
  /// IPv4 address
  final String ipv4;

  /// Creates a new [GetVpcNatGatewayEgressPublicGateway].
  /// [ipv4] IPv4 address
  GetVpcNatGatewayEgressPublicGateway({
    required this.ipv4,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ipv4,
    };
  }

  factory GetVpcNatGatewayEgressPublicGateway.fromMap(Map<String, dynamic> map) {
    return GetVpcNatGatewayEgressPublicGateway(
      ipv4: map['ipv4'] as String,
    );
  }
}

