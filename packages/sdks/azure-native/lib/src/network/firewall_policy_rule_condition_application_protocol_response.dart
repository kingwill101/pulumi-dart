// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the application rule protocol.
class FirewallPolicyRuleConditionApplicationProtocolResponse {
  /// Port number for the protocol, cannot be greater than 64000.
  final pulumi.Input<int>? port;

  /// Protocol type.
  final pulumi.Input<String>? protocolType;

  /// Creates a new [FirewallPolicyRuleConditionApplicationProtocolResponse].
  /// [port] Port number for the protocol, cannot be greater than 64000.
  /// [protocolType] Protocol type.
  FirewallPolicyRuleConditionApplicationProtocolResponse({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port, 'protocolType': ?protocolType};
  }

  factory FirewallPolicyRuleConditionApplicationProtocolResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyRuleConditionApplicationProtocolResponse(
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocolType: (() {
        final guardedValue = map['protocolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
