// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_connection_pool_get_database_connection_pool_args_doc}
/// Arguments for getDatabaseConnectionPool.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_connection_pool_get_database_connection_pool_args_doc}
class GetDatabaseConnectionPoolArgs {
  /// The ID of the original source database cluster.
  final pulumi.Input<String> clusterId;
  /// The name for the database connection pool.
  final pulumi.Input<String> name;

  /// Creates a new [GetDatabaseConnectionPoolArgs].
  /// [clusterId] The ID of the original source database cluster.
  /// [name] The name for the database connection pool.
  GetDatabaseConnectionPoolArgs({
    required this.clusterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'name': name,
    };
  }

  factory GetDatabaseConnectionPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseConnectionPoolArgs(
      clusterId: (map['clusterId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

