// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseReplica.
class GetDatabaseReplicaResult {
  final String clusterId;
  /// Name of the replica's default database.
  final String database;
  /// Database replica's hostname.
  final String host;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// Password for the replica's default user.
  final String password;
  /// Network port that the database replica is listening on.
  final int port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String privateHost;
  final String privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String privateUri;
  final String region;
  final String storageSizeMib;
  /// A list of tag names to be applied to the database replica.
  final List<String>? tags;
  /// The full URI for connecting to the database replica.
  final String uri;
  /// Username for the replica's default user.
  final String user;
  /// The UUID of the database replica.
  final String uuid;

  /// Creates a new [GetDatabaseReplicaResult].
  /// [clusterId] Required.
  /// [database] Name of the replica's default database.
  /// [host] Database replica's hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [password] Password for the replica's default user.
  /// [port] Network port that the database replica is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] Required.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [region] Required.
  /// [storageSizeMib] Required.
  /// [tags] A list of tag names to be applied to the database replica.
  /// [uri] The full URI for connecting to the database replica.
  /// [user] Username for the replica's default user.
  /// [uuid] The UUID of the database replica.
  GetDatabaseReplicaResult({
    required this.clusterId,
    required this.database,
    required this.host,
    required this.id,
    required this.name,
    required this.password,
    required this.port,
    required this.privateHost,
    required this.privateNetworkUuid,
    required this.privateUri,
    required this.region,
    required this.storageSizeMib,
    this.tags,
    required this.uri,
    required this.user,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'database': database,
      'host': host,
      'id': id,
      'name': name,
      'password': password,
      'port': port,
      'privateHost': privateHost,
      'privateNetworkUuid': privateNetworkUuid,
      'privateUri': privateUri,
      'region': region,
      'storageSizeMib': storageSizeMib,
      'tags': ?tags,
      'uri': uri,
      'user': user,
      'uuid': uuid,
    };
  }

  factory GetDatabaseReplicaResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseReplicaResult(
      clusterId: map['clusterId'] as String,
      database: map['database'] as String,
      host: map['host'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateHost: map['privateHost'] as String,
      privateNetworkUuid: map['privateNetworkUuid'] as String,
      privateUri: map['privateUri'] as String,
      region: map['region'] as String,
      storageSizeMib: map['storageSizeMib'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      uri: map['uri'] as String,
      user: map['user'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

