// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PostgresqlClusterServer {
  /// The Fully Qualified Domain Name of the server.
  final pulumi.Input<String?>? fqdn;
  /// The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [PostgresqlClusterServer].
  /// [fqdn] The Fully Qualified Domain Name of the server.
  /// [name] The name which should be used for this Azure Cosmos DB for PostgreSQL Cluster. Changing this forces a new resource to be created.
  const PostgresqlClusterServer({
    this.fqdn,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'name': ?name,
    };
  }

  factory PostgresqlClusterServer.fromMap(Map<String, dynamic> map) {
    return PostgresqlClusterServer(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
