// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDatabaseReplica.
class GetDatabaseReplicaResult {
  final String? clusterId;
  /// Name of the replica's default database.
  final String? database;
  /// Database replica's hostname.
  final String? host;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// Password for the replica's default user.
  final String? password;
  /// Network port that the database replica is listening on.
  final int? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final String? privateHost;
  final String? privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final String? privateUri;
  final String? region;
  final String? storageSizeMib;
  /// A list of tag names to be applied to the database replica.
  final List<String>? tags;
  /// The full URI for connecting to the database replica.
  final String? uri;
  /// Username for the replica's default user.
  final String? user;
  /// The UUID of the database replica.
  final String? uuid;

  /// Creates a new [GetDatabaseReplicaResult].
  /// [clusterId] Optional.
  /// [database] Name of the replica's default database.
  /// [host] Database replica's hostname.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [password] Password for the replica's default user.
  /// [port] Network port that the database replica is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] Optional.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [region] Optional.
  /// [storageSizeMib] Optional.
  /// [tags] A list of tag names to be applied to the database replica.
  /// [uri] The full URI for connecting to the database replica.
  /// [user] Username for the replica's default user.
  /// [uuid] The UUID of the database replica.
  const GetDatabaseReplicaResult({
    this.clusterId,
    this.database,
    this.host,
    this.id,
    this.name,
    this.password,
    this.port,
    this.privateHost,
    this.privateNetworkUuid,
    this.privateUri,
    this.region,
    this.storageSizeMib,
    this.tags,
    this.uri,
    this.user,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'database': ?database,
      'host': ?host,
      'id': ?id,
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'privateHost': ?privateHost,
      'privateNetworkUuid': ?privateNetworkUuid,
      'privateUri': ?privateUri,
      'region': ?region,
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'uri': ?uri,
      'user': ?user,
      'uuid': ?uuid,
    };
  }

  factory GetDatabaseReplicaResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseReplicaResult(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateHost: (() { final guardedValue = map['privateHost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateNetworkUuid: (() { final guardedValue = map['privateNetworkUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateUri: (() { final guardedValue = map['privateUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageSizeMib: (() { final guardedValue = map['storageSizeMib']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
