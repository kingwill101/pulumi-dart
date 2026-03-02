// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackendAddressPoolAddressInboundNatRulePortMapping {
  /// The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<int>? backendPort;
  /// The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<int>? frontendPort;
  /// The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<String>? inboundNatRuleName;

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
      backendPort: map['backendPort'] == null ? null : (map['backendPort'] as int).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort'] as int).input(),
      inboundNatRuleName: map['inboundNatRuleName'] == null ? null : (map['inboundNatRuleName'] as String).input(),
    );
  }
}

