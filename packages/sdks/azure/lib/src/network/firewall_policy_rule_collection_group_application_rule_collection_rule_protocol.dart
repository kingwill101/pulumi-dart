// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol {
  /// Port number of the protocol. Range is 0-64000.
  final int port;
  /// Protocol type. Possible values are `Http` and `Https`.
  final String type;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol].
  /// [port] Port number of the protocol. Range is 0-64000.
  /// [type] Protocol type. Possible values are `Http` and `Https`.
  FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol({
    required this.port,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'type': type,
    };
  }

  factory FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol(
      port: map['port'] as int,
      type: map['type'] as String,
    );
  }
}

