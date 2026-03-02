// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_mysql_updates.dart';

/// {@template pulumi_index_database_mysql_database_mysql_args_doc}
/// The set of arguments for DatabaseMysql.
/// {@endtemplate}
/// {@macro pulumi_index_database_mysql_database_mysql_args_doc}
class DatabaseMysqlArgs {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  final pulumi.Input<List<String>>? allowLists;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  final pulumi.Input<int>? clusterSize;
  /// Whether the Managed Databases is encrypted. (default `false`)
  final pulumi.Input<bool>? encrypted;
  /// The Managed Database engine in engine/version format. (e.g. `mysql/8.0.30`)
  final pulumi.Input<String> engineId;
  /// A unique, user-defined string referring to the Managed Database.
  final pulumi.Input<String> label;
  /// The region to use for the Managed Database.
  final pulumi.Input<String> region;
  /// The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  ///
  /// * Must be `none` for a single node cluster.
  ///
  /// * Must be `asynch` or `semi_synch` for a high availability cluster.
  final pulumi.Input<String>? replicationType;
  /// Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<bool>? sslConnection;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  ///
  /// - - -
  final pulumi.Input<String> type;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  final pulumi.Input<DatabaseMysqlUpdates>? updates;

  /// Creates a new [DatabaseMysqlArgs].
  /// [allowLists] A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  /// [clusterSize] The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  /// [encrypted] Whether the Managed Databases is encrypted. (default `false`)
  /// [engineId] The Managed Database engine in engine/version format. (e.g. `mysql/8.0.30`)
  /// [label] A unique, user-defined string referring to the Managed Database.
  /// [region] The region to use for the Managed Database.
  /// [replicationType] The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  /// [sslConnection] Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  /// [type] The Linode Instance type used for the nodes of the  Managed Database instance.
  /// [updates] Configuration settings for automated patch update maintenance for the Managed Database.
  DatabaseMysqlArgs({
    this.allowLists,
    this.clusterSize,
    this.encrypted,
    required this.engineId,
    required this.label,
    required this.region,
    this.replicationType,
    this.sslConnection,
    required this.type,
    this.updates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowLists': ?allowLists,
      'clusterSize': ?clusterSize,
      'encrypted': ?encrypted,
      'engineId': engineId,
      'label': label,
      'region': region,
      'replicationType': ?replicationType,
      'sslConnection': ?sslConnection,
      'type': type,
      'updates': ?pulumi.Input.mapOptionalInputValue<DatabaseMysqlUpdates, Map<String, dynamic>>(updates, (value) => value.toMap()),
    };
  }

  factory DatabaseMysqlArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseMysqlArgs(
      allowLists: map['allowLists'] == null ? null : ((map['allowLists']! as List).cast<String>()).input(),
      clusterSize: map['clusterSize'] == null ? null : (map['clusterSize']! as int).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted']! as bool).input(),
      engineId: (map['engineId'] as String).input(),
      label: (map['label'] as String).input(),
      region: (map['region'] as String).input(),
      replicationType: map['replicationType'] == null ? null : (map['replicationType']! as String).input(),
      sslConnection: map['sslConnection'] == null ? null : (map['sslConnection']! as bool).input(),
      type: (map['type'] as String).input(),
      updates: map['updates'] == null ? null : (DatabaseMysqlUpdates.fromMap((map['updates']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

