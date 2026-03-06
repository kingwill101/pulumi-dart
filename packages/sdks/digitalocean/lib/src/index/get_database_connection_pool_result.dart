// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseConnectionPool.
class GetDatabaseConnectionPoolResult {
  final String clusterId;
  /// Name of the connection pool's default database.
  final String dbName;
  /// Connection pool hostname.
  final String host;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The transaction mode for the connection pool.
  final String mode;
  final String name;
  /// Password for the connection pool's default user.
  final String password;
  /// Network port that the connection pool is listening on.
  final int port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String privateHost;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String privateUri;
  /// Size of the connection pool.
  final int size;
  /// The full URI for connecting to the database connection pool.
  final String uri;
  /// Username for the connection pool's default user.
  final String user;

  /// Creates a new [GetDatabaseConnectionPoolResult].
  /// [clusterId] Required.
  /// [dbName] Name of the connection pool's default database.
  /// [host] Connection pool hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [mode] The transaction mode for the connection pool.
  /// [name] Required.
  /// [password] Password for the connection pool's default user.
  /// [port] Network port that the connection pool is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [size] Size of the connection pool.
  /// [uri] The full URI for connecting to the database connection pool.
  /// [user] Username for the connection pool's default user.
  const GetDatabaseConnectionPoolResult({
    required this.clusterId,
    required this.dbName,
    required this.host,
    required this.id,
    required this.mode,
    required this.name,
    required this.password,
    required this.port,
    required this.privateHost,
    required this.privateUri,
    required this.size,
    required this.uri,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'dbName': dbName,
      'host': host,
      'id': id,
      'mode': mode,
      'name': name,
      'password': password,
      'port': port,
      'privateHost': privateHost,
      'privateUri': privateUri,
      'size': size,
      'uri': uri,
      'user': user,
    };
  }

  factory GetDatabaseConnectionPoolResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseConnectionPoolResult(
      clusterId: map['clusterId'] as String,
      dbName: map['dbName'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateHost: map['privateHost'] as String,
      privateUri: map['privateUri'] as String,
      size: map['size'] as int,
      uri: map['uri'] as String,
      user: map['user'] as String,
    );
  }
}

