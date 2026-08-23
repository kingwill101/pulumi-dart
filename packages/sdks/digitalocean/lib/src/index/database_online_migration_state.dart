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
  const DatabaseOnlineMigrationState({
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
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableSsl: (() { final guardedValue = map['disableSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignoreDbs: (() { final guardedValue = map['ignoreDbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseOnlineMigrationSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
