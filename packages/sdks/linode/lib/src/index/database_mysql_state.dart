// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_updates.dart';

/// Input properties used for looking up and filtering DatabaseMysql resources.
class DatabaseMysqlState {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database instance.
  final pulumi.Input<String>? caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
  /// When this Managed Database was created.
  final pulumi.Input<String>? created;
  /// Whether the Managed Databases is encrypted. (default `false`)
  final pulumi.Input<bool>? encrypted;
  /// The Managed Database engine. (e.g. `mysql`)
  final pulumi.Input<String>? engine;
  /// The Managed Database engine in engine/version format. (e.g. `mysql/8.0.30`)
  final pulumi.Input<String>? engineId;
  /// The primary host for the Managed Database.
  final pulumi.Input<String>? hostPrimary;
  /// The secondary/private network host for the Managed Database.
  final pulumi.Input<String>? hostSecondary;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String>? label;
  /// The region to use for the Managed Database.
  final pulumi.Input<String>? region;
  /// The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  ///
  /// * Must be `none` for a single node cluster.
  ///
  /// * Must be `asynch` or `semi_synch` for a high availability cluster.
  final pulumi.Input<String>? replicationType;
  /// The randomly-generated root password for the Managed Database instance.
  final pulumi.Input<String>? rootPassword;
  /// The root username for the Managed Database instance.
  final pulumi.Input<String>? rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<bool>? sslConnection;
  /// The operating status of the Managed Database.
  final pulumi.Input<String>? status;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  ///
  /// - - -
  final pulumi.Input<String>? type;
  /// When this Managed Database was last updated.
  final pulumi.Input<String>? updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabaseMysqlUpdates>? updates;
  /// The Managed Database engine version. (e.g. `v8.0.26`)
  final pulumi.Input<String>? version;

  /// Creates a new [DatabaseMysqlState].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [caCert] The base64-encoded SSL CA certificate for the Managed Database instance.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [created] When this Managed Database was created.
  /// [encrypted] Whether the Managed Databases is encrypted. (default `false`)
  /// [engine] The Managed Database engine. (e.g. `mysql`)
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `mysql/8.0.30`)
  /// [hostPrimary] The primary host for the Managed Database.
  /// [hostSecondary] The secondary/private network host for the Managed Database.
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [region] The region to use for the Managed Database.
  /// [replicationType] The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  /// [rootPassword] The randomly-generated root password for the Managed Database instance.
  /// [rootUsername] The root username for the Managed Database instance.
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  /// [status] The operating status of the Managed Database.
  /// [type] The Linode Instance type used for the nodes of the  Managed Database instance.
  /// [updated] When this Managed Database was last updated.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  /// [version] The Managed Database engine version. (e.g. `v8.0.26`)
  DatabaseMysqlState({
    pulumi.Output<List<String>>? allowLists,
    pulumi.Output<String>? caCert,
    pulumi.Output<int>? clusterSize,
    pulumi.Output<String>? created,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineId,
    pulumi.Output<String>? hostPrimary,
    pulumi.Output<String>? hostSecondary,
    pulumi.Output<String>? label,
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationType,
    pulumi.Output<String>? rootPassword,
    pulumi.Output<String>? rootUsername,
    pulumi.Output<bool>? sslConnection,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
    pulumi.Output<String>? updated,
    pulumi.Output<DatabaseMysqlUpdates>? updates,
    pulumi.Output<String>? version,
  }) :
      allowLists = pulumi.Input.asOptionalInput<List<String>>(allowLists),
      caCert = pulumi.Input.asOptionalInput<String>(caCert),
      clusterSize = pulumi.Input.asOptionalInput<int>(clusterSize),
      created = pulumi.Input.asOptionalInput<String>(created),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineId = pulumi.Input.asOptionalInput<String>(engineId),
      hostPrimary = pulumi.Input.asOptionalInput<String>(hostPrimary),
      hostSecondary = pulumi.Input.asOptionalInput<String>(hostSecondary),
      label = pulumi.Input.asOptionalInput<String>(label),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationType = pulumi.Input.asOptionalInput<String>(replicationType),
      rootPassword = pulumi.Input.asOptionalInput<String>(rootPassword),
      rootUsername = pulumi.Input.asOptionalInput<String>(rootUsername),
      sslConnection = pulumi.Input.asOptionalInput<bool>(sslConnection),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updates = pulumi.Input.asOptionalInput<DatabaseMysqlUpdates>(updates),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'caCert': ?caCert,
      'clusterSize': ?clusterSize,
      'created': ?created,
      'encrypted': ?encrypted,
      'engine': ?engine,
      'engineId': ?engineId,
      'hostPrimary': ?hostPrimary,
      'hostSecondary': ?hostSecondary,
      'label': ?label,
      'region': ?region,
      'replicationType': ?replicationType,
      'rootPassword': ?rootPassword,
      'rootUsername': ?rootUsername,
      'sslConnection': ?sslConnection,
      'status': ?status,
      'type': ?type,
      'updated': ?updated,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlUpdates, Map<String, dynamic>>(updates, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory DatabaseMysqlState.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlState(
      allowLists: map['allowLists'] == null ? null : pulumi.Output.create<List<String>>((map['allowLists'] as List).cast<String>()),
      caCert: map['caCert'] == null ? null : pulumi.Output.create<String>(map['caCert'] as String),
      clusterSize: map['clusterSize'] == null ? null : pulumi.Output.create<int>(map['clusterSize'] as int),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineId: map['engineId'] == null ? null : pulumi.Output.create<String>(map['engineId'] as String),
      hostPrimary: map['hostPrimary'] == null ? null : pulumi.Output.create<String>(map['hostPrimary'] as String),
      hostSecondary: map['hostSecondary'] == null ? null : pulumi.Output.create<String>(map['hostSecondary'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationType: map['replicationType'] == null ? null : pulumi.Output.create<String>(map['replicationType'] as String),
      rootPassword: map['rootPassword'] == null ? null : pulumi.Output.create<String>(map['rootPassword'] as String),
      rootUsername: map['rootUsername'] == null ? null : pulumi.Output.create<String>(map['rootUsername'] as String),
      sslConnection: map['sslConnection'] == null ? null : pulumi.Output.create<bool>(map['sslConnection'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updates: map['updates'] == null ? null : pulumi.Output.create<DatabaseMysqlUpdates>(DatabaseMysqlUpdates.fromMap((map['updates'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

