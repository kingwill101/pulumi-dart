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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? database,
    pulumi.Output<String>? host,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    pulumi.Output<String>? privateHost,
    pulumi.Output<String>? privateNetworkUuid,
    pulumi.Output<String>? privateUri,
    pulumi.Output<String>? region,
    pulumi.Output<String>? size,
    pulumi.Output<String>? storageSizeMib,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? uri,
    pulumi.Output<String>? user,
    pulumi.Output<String>? uuid,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      database = pulumi.Input.asOptionalInput<String>(database),
      host = pulumi.Input.asOptionalInput<String>(host),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      privateHost = pulumi.Input.asOptionalInput<String>(privateHost),
      privateNetworkUuid = pulumi.Input.asOptionalInput<String>(privateNetworkUuid),
      privateUri = pulumi.Input.asOptionalInput<String>(privateUri),
      region = pulumi.Input.asOptionalInput<String>(region),
      size = pulumi.Input.asOptionalInput<String>(size),
      storageSizeMib = pulumi.Input.asOptionalInput<String>(storageSizeMib),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      uri = pulumi.Input.asOptionalInput<String>(uri),
      user = pulumi.Input.asOptionalInput<String>(user),
      uuid = pulumi.Input.asOptionalInput<String>(uuid);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      privateHost: map['privateHost'] == null ? null : pulumi.Output.create<String>(map['privateHost'] as String),
      privateNetworkUuid: map['privateNetworkUuid'] == null ? null : pulumi.Output.create<String>(map['privateNetworkUuid'] as String),
      privateUri: map['privateUri'] == null ? null : pulumi.Output.create<String>(map['privateUri'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      storageSizeMib: map['storageSizeMib'] == null ? null : pulumi.Output.create<String>(map['storageSizeMib'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
      uuid: map['uuid'] == null ? null : pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

