// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterMetastoresHive {
  /// The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String> databaseName;
  /// The external Hive metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  final pulumi.Input<String> password;
  /// The fully-qualified domain name (FQDN) of the SQL server to use for the external Hive metastore. Changing this forces a new resource to be created.
  final pulumi.Input<String> server;
  /// The external Hive metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [SparkClusterMetastoresHive].
  /// [databaseName] The external Hive metastore's existing SQL database. Changing this forces a new resource to be created.
  /// [password] The external Hive metastore's existing SQL server admin password. Changing this forces a new resource to be created.
  /// [server] The fully-qualified domain name (FQDN) of the SQL server to use for the external Hive metastore. Changing this forces a new resource to be created.
  /// [username] The external Hive metastore's existing SQL server admin username. Changing this forces a new resource to be created.
  const SparkClusterMetastoresHive({
    required this.databaseName,
    required this.password,
    required this.server,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'password': password,
      'server': server,
      'username': username,
    };
  }

  factory SparkClusterMetastoresHive.fromMap(Map<String, dynamic> map) {
    return SparkClusterMetastoresHive(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      server: pulumi.Input.fromValue(map['server'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
