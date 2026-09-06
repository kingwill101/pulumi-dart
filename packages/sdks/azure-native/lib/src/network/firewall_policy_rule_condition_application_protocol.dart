// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the application rule protocol.
class FirewallPolicyRuleConditionApplicationProtocol {
  /// Port number for the protocol, cannot be greater than 64000.
  final pulumi.Input<int?>? port;
  /// Protocol type.
  final pulumi.Input<dynamic>? protocolType;

  /// Creates a new [FirewallPolicyRuleConditionApplicationProtocol].
  /// [port] Port number for the protocol, cannot be greater than 64000.
  /// [protocolType] Protocol type.
  const FirewallPolicyRuleConditionApplicationProtocol({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory FirewallPolicyRuleConditionApplicationProtocol.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleConditionApplicationProtocol(
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
