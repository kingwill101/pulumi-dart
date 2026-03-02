// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseOnlineMigrationSource {
  /// The name of the default database
  final pulumi.Input<String> dbName;
  /// The FQDN pointing to the database cluster's current primary node.
  final pulumi.Input<String> host;
  /// A randomly generated password for the default user.
  final pulumi.Input<String> password;
  /// The port on which the database cluster is listening.
  final pulumi.Input<int> port;
  /// The default user for the database.
  final pulumi.Input<String> username;

  /// Creates a new [DatabaseOnlineMigrationSource].
  /// [dbName] The name of the default database
  /// [host] The FQDN pointing to the database cluster's current primary node.
  /// [password] A randomly generated password for the default user.
  /// [port] The port on which the database cluster is listening.
  /// [username] The default user for the database.
  DatabaseOnlineMigrationSource({
    required this.dbName,
    required this.host,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': dbName,
      'host': host,
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory DatabaseOnlineMigrationSource.fromMap(Map<String, dynamic> map) {
    return DatabaseOnlineMigrationSource(
      dbName: (map['dbName'] as String).input(),
      host: (map['host'] as String).input(),
      password: (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      username: (map['username'] as String).input(),
    );
  }
}

