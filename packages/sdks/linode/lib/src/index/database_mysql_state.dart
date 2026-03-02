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
    this.allowLists,
    this.caCert,
    this.clusterSize,
    this.created,
    this.encrypted,
    this.engine,
    this.engineId,
    this.hostPrimary,
    this.hostSecondary,
    this.label,
    this.region,
    this.replicationType,
    this.rootPassword,
    this.rootUsername,
    this.sslConnection,
    this.status,
    this.type,
    this.updated,
    this.updates,
    this.version,
  });

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
      allowLists: map['allowLists'] == null ? null : ((map['allowLists']! as List).cast<String>()).input(),
      caCert: map['caCert'] == null ? null : (map['caCert']! as String).input(),
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize']! as int).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineId: map['engineId'] == null ? null : (map['engineId']! as String).input(),
      hostPrimary: map['hostPrimary'] == null ? null : (map['hostPrimary']! as String).input(),
      hostSecondary: map['hostSecondary'] == null ? null : (map['hostSecondary']! as String).input(),
      label: map['label'] == null ? null : (map['label']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      replicationType: map['replicationType'] == null ? null : (map['replicationType']! as String).input(),
      rootPassword: map['rootPassword'] == null ? null : (map['rootPassword']! as String).input(),
      rootUsername: map['rootUsername'] == null ? null : (map['rootUsername']! as String).input(),
      sslConnection: map['sslConnection'] == null ? null : (map['sslConnection']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
      updates: map['updates'] == null ? null : (DatabaseMysqlUpdates.fromMap((map['updates']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

