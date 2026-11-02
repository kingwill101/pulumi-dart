// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallApplicationRuleCollectionRuleProtocol {
  /// Specify a port for the connection.
  final pulumi.Input<int> port;
  /// Specifies the type of connection. Possible values are `Http`, `Https` and `Mssql`.
  final pulumi.Input<String> type;

  /// Creates a new [FirewallApplicationRuleCollectionRuleProtocol].
  /// [port] Specify a port for the connection.
  /// [type] Specifies the type of connection. Possible values are `Http`, `Https` and `Mssql`.
  const FirewallApplicationRuleCollectionRuleProtocol({
    required this.port,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'type': type,
    };
  }

  factory FirewallApplicationRuleCollectionRuleProtocol.fromMap(Map<String, dynamic> map) {
    return FirewallApplicationRuleCollectionRuleProtocol(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
