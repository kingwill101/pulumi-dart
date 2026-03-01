// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the application rule protocol.
class FirewallPolicyRuleConditionApplicationProtocolResponse {
  /// Port number for the protocol, cannot be greater than 64000.
  final int? port;
  /// Protocol type.
  final String? protocolType;

  /// Creates a new [FirewallPolicyRuleConditionApplicationProtocolResponse].
  /// [port] Port number for the protocol, cannot be greater than 64000.
  /// [protocolType] Protocol type.
  FirewallPolicyRuleConditionApplicationProtocolResponse({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory FirewallPolicyRuleConditionApplicationProtocolResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleConditionApplicationProtocolResponse(
      port: map['port'] == null ? null : map['port'] as int,
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
    );
  }
}

