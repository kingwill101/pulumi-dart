// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseReplica resources.
class DatabaseReplicaState {
  /// The ID of the original source database cluster.
  final pulumi.Input<String>? clusterId;
  /// Name of the replica's default database.
  final pulumi.Input<String>? database;
  /// Database replica's hostname.
  final pulumi.Input<String>? host;
  /// The name for the database replica.
  final pulumi.Input<String>? name;
  /// Password for the replica's default user.
  final pulumi.Input<String>? password;
  /// Network port that the database replica is listening on.
  final pulumi.Input<int>? port;
  /// Same as `host`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateHost;
  /// The ID of the VPC where the database replica will be located.
  final pulumi.Input<String>? privateNetworkUuid;
  /// Same as `uri`, but only accessible from resources within the account and in the same region.
  final pulumi.Input<String>? privateUri;
  /// DigitalOcean region where the replica will reside.
  final pulumi.Input<String>? region;
  /// Database Droplet size associated with the replica (ex. `db-s-1vcpu-1gb`). Note that when resizing an existing replica, its size can only be increased. Decreasing its size is not supported.
  final pulumi.Input<String>? size;
  final pulumi.Input<String>? storageSizeMib;
  /// A list of tag names to be applied to the database replica.
  final pulumi.Input<List<String>>? tags;
  /// The full URI for connecting to the database replica.
  final pulumi.Input<String>? uri;
  /// Username for the replica's default user.
  final pulumi.Input<String>? user;
  /// The UUID of the database replica. The uuid can be used to reference the database replica as the target database cluster in other resources. See example  "Create firewall rule for database replica" above.
  final pulumi.Input<String>? uuid;

  /// Creates a new [DatabaseReplicaState].
  /// [clusterId] The ID of the original source database cluster.
  /// [database] Name of the replica's default database.
  /// [host] Database replica's hostname.
  /// [name] The name for the database replica.
  /// [password] Password for the replica's default user.
  /// [port] Network port that the database replica is listening on.
  /// [privateHost] Same as `host`, but only accessible from resources within the account and in the same region.
  /// [privateNetworkUuid] The ID of the VPC where the database replica will be located.
  /// [privateUri] Same as `uri`, but only accessible from resources within the account and in the same region.
  /// [region] DigitalOcean region where the replica will reside.
  /// [size] Database Droplet size associated with the replica (ex. `db-s-1vcpu-1gb`). Note that when resizing an existing replica, its size can only be increased. Decreasing its size is not supported.
  /// [storageSizeMib] Optional.
  /// [tags] A list of tag names to be applied to the database replica.
  /// [uri] The full URI for connecting to the database replica.
  /// [user] Username for the replica's default user.
  /// [uuid] The UUID of the database replica. The uuid can be used to reference the database replica as the target database cluster in other resources. See example  "Create firewall rule for database replica" above.
  DatabaseReplicaState({
    this.clusterId,
    this.database,
    this.host,
    this.name,
    this.password,
    this.port,
    this.privateHost,
    this.privateNetworkUuid,
    this.privateUri,
    this.region,
    this.size,
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
      'name': ?name,
      'password': ?password,
      'port': ?port,
      'privateHost': ?privateHost,
      'privateNetworkUuid': ?privateNetworkUuid,
      'privateUri': ?privateUri,
      'region': ?region,
      'size': ?size,
      'storageSizeMib': ?storageSizeMib,
      'tags': ?tags,
      'uri': ?uri,
      'user': ?user,
      'uuid': ?uuid,
    };
  }

  factory DatabaseReplicaState.fromMap(Map<String, dynamic> map) {
    return DatabaseReplicaState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      host: map['host'] == null ? null : (map['host'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      privateHost: map['privateHost'] == null ? null : (map['privateHost'] as String).input(),
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : (map['privateNetworkUuid'] as String).input(),
      privateUri: map['privateUri'] == null ? null : (map['privateUri'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      storageSizeMib: map['storageSizeMib'] == null ? null : (map['storageSizeMib'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
    );
  }
}

