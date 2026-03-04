// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBackendAddressPoolBackendAddressInboundNatRulePortMapping {
  /// The Backend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<int> backendPort;

  /// The Frontend Port of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<int> frontendPort;

  /// The name of the Load Balancing Inbound NAT Rules associated with this Backend Address Pool Address.
  final pulumi.Input<String> inboundNatRuleName;

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

  factory GetBackendAddressPoolBackendAddressInboundNatRulePortMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBackendAddressPoolBackendAddressInboundNatRulePortMapping(
      backendPort: pulumi.Input.fromValue(map['backendPort'] as int),
      frontendPort: pulumi.Input.fromValue(map['frontendPort'] as int),
      inboundNatRuleName: pulumi.Input.fromValue(
        map['inboundNatRuleName'] as String,
      ),
    );
  }
}
