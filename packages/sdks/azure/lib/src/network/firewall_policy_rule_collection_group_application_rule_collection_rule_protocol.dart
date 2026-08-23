// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol {
  /// Port number of the protocol. Range is 0-64000.
  final pulumi.Input<int> port;
  /// Protocol type. Possible values are `Http` and `Https`.
  final pulumi.Input<String> type;

  /// Creates a new [FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol].
  /// [port] Port number of the protocol. Range is 0-64000.
  /// [type] Protocol type. Possible values are `Http` and `Https`.
  const FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocol({
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
      port: pulumi.Input.fromValue(map['port'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
