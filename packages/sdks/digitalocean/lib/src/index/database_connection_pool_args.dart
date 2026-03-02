// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_connection_pool_database_connection_pool_args_doc}
/// The set of arguments for DatabaseConnectionPool.
/// {@endtemplate}
/// {@macro pulumi_index_database_connection_pool_database_connection_pool_args_doc}
class DatabaseConnectionPoolArgs {
  /// The ID of the source database cluster. Note: This must be a PostgreSQL cluster.
  final pulumi.Input<String> clusterId;
  /// The database for use with the connection pool.
  final pulumi.Input<String> dbName;
  /// The PGBouncer transaction mode for the connection pool. The allowed values are session, transaction, and statement.
  final pulumi.Input<String> mode;
  /// The name for the database connection pool.
  final pulumi.Input<String>? name;
  /// The desired size of the PGBouncer connection pool.
  final pulumi.Input<int> size;
  /// The name of the database user for use with the connection pool. When excluded, all sessions connect to the database as the inbound user.
  final pulumi.Input<String>? user;

  /// Creates a new [DatabaseConnectionPoolArgs].
  /// [clusterId] The ID of the source database cluster. Note: This must be a PostgreSQL cluster.
  /// [dbName] The database for use with the connection pool.
  /// [mode] The PGBouncer transaction mode for the connection pool. The allowed values are session, transaction, and statement.
  /// [name] The name for the database connection pool.
  /// [size] The desired size of the PGBouncer connection pool.
  /// [user] The name of the database user for use with the connection pool. When excluded, all sessions connect to the database as the inbound user.
  DatabaseConnectionPoolArgs({
    required this.clusterId,
    required this.dbName,
    required this.mode,
    this.name,
    required this.size,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'dbName': dbName,
      'mode': mode,
      'name': ?name,
      'size': size,
      'user': ?user,
    };
  }

  factory DatabaseConnectionPoolArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseConnectionPoolArgs(
      clusterId: (map['clusterId'] as String).input(),
      dbName: (map['dbName'] as String).input(),
      mode: (map['mode'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      size: (map['size'] as int).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

