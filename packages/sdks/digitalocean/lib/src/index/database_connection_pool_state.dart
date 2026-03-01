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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? dbName,
    pulumi.Output<String>? host,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<String>? privateHost,
    pulumi.Output<String>? privateUri,
    pulumi.Output<int>? size,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? user,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      host = pulumi.Input.asOptionalInput<String>(host),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      privateHost = pulumi.Input.asOptionalInput<String>(privateHost),
      privateUri = pulumi.Input.asOptionalInput<String>(privateUri),
      size = pulumi.Input.asOptionalInput<int>(size),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privateHost: map['privateHost'] == null ? null : pulumi.Output.create<String>(map['privateHost'] as String),
      privateUri: map['privateUri'] == null ? null : pulumi.Output.create<String>(map['privateUri'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

