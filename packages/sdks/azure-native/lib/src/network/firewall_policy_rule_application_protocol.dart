// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the application rule protocol.
class FirewallPolicyRuleApplicationProtocol {
  /// Port number for the protocol, cannot be greater than 64000.
  final pulumi.Input<int>? port;
  /// Protocol type.
  final pulumi.Input<String>? protocolType;

  /// Creates a new [FirewallPolicyRuleApplicationProtocol].
  /// [port] Port number for the protocol, cannot be greater than 64000.
  /// [protocolType] Protocol type.
  FirewallPolicyRuleApplicationProtocol({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory FirewallPolicyRuleApplicationProtocol.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleApplicationProtocol(
      port: map['port'] == null ? null : (map['port']! as int).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType']! as String).input(),
    );
  }
}

