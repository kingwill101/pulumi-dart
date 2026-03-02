// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseConnectionPool resources.
class DatabaseConnectionPoolState {
  /// The ID of the source database cluster. Note: This must be a PostgreSQL cluster.
  final pulumi.Input<String>? clusterId;
  /// The database for use with the connection pool.
  final pulumi.Input<String>? dbName;
  /// The hostname used to connect to the database connection pool.
  final pulumi.Input<String>? host;
  /// The PGBouncer transaction mode for the connection pool. The allowed values are session, transaction, and statement.
  final pulumi.Input<String>? mode;
  /// The name for the database connection pool.
  final pulumi.Input<String>? name;
  /// Password for the connection pool's user.
  final pulumi.Input<String>? password;
  /// Network port that the database connection pool is listening on.
  final pulumi.Input<int>? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateHost;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateUri;
  /// The desired size of the PGBouncer connection pool.
  final pulumi.Input<int>? size;
  /// The full URI for connecting to the database connection pool.
  final pulumi.Input<String>? uri;
  /// The name of the database user for use with the connection pool. When excluded, all sessions connect to the database as the inbound user.
  final pulumi.Input<String>? user;

  /// Creates a new [DatabaseConnectionPoolState].
  /// [clusterId] The ID of the source database cluster. Note: This must be a PostgreSQL cluster.
  /// [dbName] The database for use with the connection pool.
  /// [host] The hostname used to connect to the database connection pool.
  /// [mode] The PGBouncer transaction mode for the connection pool. The allowed values are session, transaction, and statement.
  /// [name] The name for the database connection pool.
  /// [password] Password for the connection pool's user.
  /// [port] Network port that the database connection pool is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [size] The desired size of the PGBouncer connection pool.
  /// [uri] The full URI for connecting to the database connection pool.
  /// [user] The name of the database user for use with the connection pool. When excluded, all sessions connect to the database as the inbound user.
  DatabaseConnectionPoolState({
    this.clusterId,
    this.dbName,
    this.host,
    this.mode,
    this.name,
    this.password,
    this.port,
    this.privateHost,
    this.privateUri,
    this.size,
    this.uri,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'dbName': ?dbName,
      'host': ?host,
      'mode': ?mode,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'privateHost': ?privateHost,
      'privateUri': ?privateUri,
      'size': ?size,
      'uri': ?uri,
      'user': ?user,
    };
  }

  factory DatabaseConnectionPoolState.fromMap(Map<String, dynamic> map) {
    return DatabaseConnectionPoolState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      privateHost: map['privateHost'] == null ? null : (map['privateHost']! as String).input(),
      privateUri: map['privateUri'] == null ? null : (map['privateUri']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

