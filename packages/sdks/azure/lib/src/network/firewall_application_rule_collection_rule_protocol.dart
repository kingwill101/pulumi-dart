// ignore_for_file: unused_element, unnecessary_cast


class FirewallApplicationRuleCollectionRuleProtocol {
  /// Specify a port for the connection.
  final int port;
  /// Specifies the type of connection. Possible values are `Http`, `Https` and `Mssql`.
  final String type;

  /// Creates a new [FirewallApplicationRuleCollectionRuleProtocol].
  /// [port] Specify a port for the connection.
  /// [type] Specifies the type of connection. Possible values are `Http`, `Https` and `Mssql`.
  FirewallApplicationRuleCollectionRuleProtocol({
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
      port: map['port'] as int,
      type: map['type'] as String,
    );
  }
}

