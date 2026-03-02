// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_online_migration_source.dart';

/// Input properties used for looking up and filtering DatabaseOnlineMigration resources.
class DatabaseOnlineMigrationState {
  /// The ID of the target MySQL cluster.
  final pulumi.Input<String>? clusterId;
  /// The date and time when the online migration was created
  final pulumi.Input<String>? createdAt;
  /// When set to true, enables SSL encryption when connecting to the source database.
  final pulumi.Input<bool>? disableSsl;
  /// A list of databases that should be ignored during migration.
  final pulumi.Input<List<String>>? ignoreDbs;
  /// Configuration for migration
  final pulumi.Input<DatabaseOnlineMigrationSource>? source;
  /// The status of the online migration
  final pulumi.Input<String>? status;

  /// Creates a new [DatabaseOnlineMigrationState].
  /// [clusterId] The ID of the target MySQL cluster.
  /// [createdAt] The date and time when the online migration was created
  /// [disableSsl] When set to true, enables SSL encryption when connecting to the source database.
  /// [ignoreDbs] A list of databases that should be ignored during migration.
  /// [source] Configuration for migration
  /// [status] The status of the online migration
  DatabaseOnlineMigrationState({
    this.clusterId,
    this.createdAt,
    this.disableSsl,
    this.ignoreDbs,
    this.source,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'createdAt': ?createdAt,
      'disableSsl': ?disableSsl,
      'ignoreDbs': ?ignoreDbs,
      'source': ?pulumi.Input.mapOptionalInputValue<DatabaseOnlineMigrationSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory DatabaseOnlineMigrationState.fromMap(Map<String, dynamic> map) {
    return DatabaseOnlineMigrationState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      disableSsl: map['disableSsl'] == null ? null : (map['disableSsl'] as bool).input(),
      ignoreDbs: map['ignoreDbs'] == null ? null : ((map['ignoreDbs'] as List).cast<String>()).input(),
      source: map['source'] == null ? null : (DatabaseOnlineMigrationSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

