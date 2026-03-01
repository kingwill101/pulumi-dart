// ignore_for_file: unused_element, unnecessary_cast


class BackendAddressPoolAddressInboundNatRulePortMapping {
  /// The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final int? backendPort;
  /// The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final int? frontendPort;
  /// The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final String? inboundNatRuleName;

  /// Creates a new [BackendAddressPoolAddressInboundNatRulePortMapping].
  /// [backendPort] The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  /// [frontendPort] The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  /// [inboundNatRuleName] The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  BackendAddressPoolAddressInboundNatRulePortMapping({
    this.backendPort,
    this.frontendPort,
    this.inboundNatRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'frontendPort': ?frontendPort,
      'inboundNatRuleName': ?inboundNatRuleName,
    };
  }

  factory BackendAddressPoolAddressInboundNatRulePortMapping.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolAddressInboundNatRulePortMapping(
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      frontendPort: map['frontendPort'] == null ? null : map['frontendPort'] as int,
      inboundNatRuleName: map['inboundNatRuleName'] == null ? null : map['inboundNatRuleName'] as String,
    );
  }
}

