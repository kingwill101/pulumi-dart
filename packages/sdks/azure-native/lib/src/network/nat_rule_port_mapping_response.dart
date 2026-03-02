// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Individual port mappings for inbound NAT rule created for backend pool.
class NatRulePortMappingResponse {
  /// Backend port.
  final pulumi.Input<int>? backendPort;
  /// Frontend port.
  final pulumi.Input<int>? frontendPort;
  /// Name of inbound NAT rule.
  final pulumi.Input<String>? inboundNatRuleName;

  /// Creates a new [NatRulePortMappingResponse].
  /// [backendPort] Backend port.
  /// [frontendPort] Frontend port.
  /// [inboundNatRuleName] Name of inbound NAT rule.
  NatRulePortMappingResponse({
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

  factory NatRulePortMappingResponse.fromMap(Map<String, dynamic> map) {
    return NatRulePortMappingResponse(
      backendPort: map['backendPort'] == null ? null : (map['backendPort']! as int).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort']! as int).input(),
      inboundNatRuleName: map['inboundNatRuleName'] == null ? null : (map['inboundNatRuleName']! as String).input(),
    );
  }
}

