// ignore_for_file: unused_element, unnecessary_cast


class GetBackendAddressPoolBackendAddressInboundNatRulePortMapping {
  /// The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final int backendPort;
  /// The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final int frontendPort;
  /// The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final String inboundNatRuleName;

  /// Creates a new [GetBackendAddressPoolBackendAddressInboundNatRulePortMapping].
  /// [backendPort] The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  /// [frontendPort] The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  /// [inboundNatRuleName] The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  GetBackendAddressPoolBackendAddressInboundNatRulePortMapping({
    required this.backendPort,
    required this.frontendPort,
    required this.inboundNatRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': backendPort,
      'frontendPort': frontendPort,
      'inboundNatRuleName': inboundNatRuleName,
    };
  }

  factory GetBackendAddressPoolBackendAddressInboundNatRulePortMapping.fromMap(Map<String, dynamic> map) {
    return GetBackendAddressPoolBackendAddressInboundNatRulePortMapping(
      backendPort: map['backendPort'] as int,
      frontendPort: map['frontendPort'] as int,
      inboundNatRuleName: map['inboundNatRuleName'] as String,
    );
  }
}

