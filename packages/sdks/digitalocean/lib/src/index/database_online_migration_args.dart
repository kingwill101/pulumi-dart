// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_online_migration_source.dart';

/// {@template pulumi_index_database_online_migration_database_online_migration_args_doc}
/// The set of arguments for DatabaseOnlineMigration.
/// {@endtemplate}
/// {@macro pulumi_index_database_online_migration_database_online_migration_args_doc}
class DatabaseOnlineMigrationArgs {
  /// The ID of the target MySQL cluster.
  final pulumi.Input<String> clusterId;
  /// When set to true, enables SSL encryption when connecting to the source database.
  final pulumi.Input<bool>? disableSsl;
  /// A list of databases that should be ignored during migration.
  final pulumi.Input<List<String>>? ignoreDbs;
  /// Configuration for migration
  final pulumi.Input<DatabaseOnlineMigrationSource> source;

  /// Creates a new [DatabaseOnlineMigrationArgs].
  /// [clusterId] The ID of the target MySQL cluster.
  /// [disableSsl] When set to true, enables SSL encryption when connecting to the source database.
  /// [ignoreDbs] A list of databases that should be ignored during migration.
  /// [source] Configuration for migration
  DatabaseOnlineMigrationArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<bool>? disableSsl,
    pulumi.Output<List<String>>? ignoreDbs,
    required pulumi.Output<DatabaseOnlineMigrationSource> source,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      disableSsl = pulumi.Input.asOptionalInput<bool>(disableSsl),
      ignoreDbs = pulumi.Input.asOptionalInput<List<String>>(ignoreDbs),
      source = pulumi.Input.asInput<DatabaseOnlineMigrationSource>(source);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'disableSsl': ?disableSsl,
      'ignoreDbs': ?ignoreDbs,
      'source': pulumi.Input.mapInputValue<DatabaseOnlineMigrationSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory DatabaseOnlineMigrationArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseOnlineMigrationArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      disableSsl: map['disableSsl'] == null ? null : pulumi.Output.create<bool>(map['disableSsl'] as bool),
      ignoreDbs: map['ignoreDbs'] == null ? null : pulumi.Output.create<List<String>>((map['ignoreDbs'] as List).cast<String>()),
      source: pulumi.Output.create<DatabaseOnlineMigrationSource>(DatabaseOnlineMigrationSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
    );
  }
}

