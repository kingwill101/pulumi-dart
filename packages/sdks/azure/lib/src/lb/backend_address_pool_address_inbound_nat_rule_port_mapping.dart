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
  const BackendAddressPoolAddressInboundNatRulePortMapping({
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
      backendPort: (() { final guardedValue = map['backendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      frontendPort: (() { final guardedValue = map['frontendPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inboundNatRuleName: (() { final guardedValue = map['inboundNatRuleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

