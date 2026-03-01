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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? createdAt,
    pulumi.Output<bool>? disableSsl,
    pulumi.Output<List<String>>? ignoreDbs,
    pulumi.Output<DatabaseOnlineMigrationSource>? source,
    pulumi.Output<String>? status,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      disableSsl = pulumi.Input.asOptionalInput<bool>(disableSsl),
      ignoreDbs = pulumi.Input.asOptionalInput<List<String>>(ignoreDbs),
      source = pulumi.Input.asOptionalInput<DatabaseOnlineMigrationSource>(source),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      disableSsl: map['disableSsl'] == null ? null : pulumi.Output.create<bool>(map['disableSsl'] as bool),
      ignoreDbs: map['ignoreDbs'] == null ? null : pulumi.Output.create<List<String>>((map['ignoreDbs'] as List).cast<String>()),
      source: map['source'] == null ? null : pulumi.Output.create<DatabaseOnlineMigrationSource>(DatabaseOnlineMigrationSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

