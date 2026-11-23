// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseConnectionPool.
class GetDatabaseConnectionPoolResult {
  final String? clusterId;
  /// Name of the connection pool's default database.
  final String? dbName;
  /// Connection pool hostname.
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The transaction mode for the connection pool.
  final String? mode;
  final String? name;
  /// Password for the connection pool's default user.
  final String? password;
  /// Network port that the connection pool is listening on.
  final int? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String? privateHost;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String? privateUri;
  /// Size of the connection pool.
  final int? size;
  /// The full URI for connecting to the database connection pool.
  final String? uri;
  /// Username for the connection pool's default user.
  final String? user;

  /// Creates a new [GetDatabaseConnectionPoolResult].
  /// [clusterId] Optional.
  /// [dbName] Name of the connection pool's default database.
  /// [host] Connection pool hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mode] The transaction mode for the connection pool.
  /// [name] Optional.
  /// [password] Password for the connection pool's default user.
  /// [port] Network port that the connection pool is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [size] Size of the connection pool.
  /// [uri] The full URI for connecting to the database connection pool.
  /// [user] Username for the connection pool's default user.
  const GetDatabaseConnectionPoolResult({
    this.clusterId,
    this.dbName,
    this.host,
    this.id,
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
      'id': ?id,
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

  factory GetDatabaseConnectionPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseConnectionPoolResult(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateHost: (() { final guardedValue = map['privateHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateUri: (() { final guardedValue = map['privateUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
