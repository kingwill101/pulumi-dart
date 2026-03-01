// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the application rule protocol.
class FirewallPolicyRuleApplicationProtocolResponse {
  /// Port number for the protocol, cannot be greater than 64000.
  final int? port;
  /// Protocol type.
  final String? protocolType;

  /// Creates a new [FirewallPolicyRuleApplicationProtocolResponse].
  /// [port] Port number for the protocol, cannot be greater than 64000.
  /// [protocolType] Protocol type.
  FirewallPolicyRuleApplicationProtocolResponse({
    this.port,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocolType': ?protocolType,
    };
  }

  factory FirewallPolicyRuleApplicationProtocolResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleApplicationProtocolResponse(
      port: map['port'] == null ? null : map['port'] as int,
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
    );
  }
}

