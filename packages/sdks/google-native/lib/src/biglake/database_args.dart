// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_type.dart';
import 'hive_database_options.dart';

/// {@template pulumi_biglake_v1_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_database_args_doc}
class DatabaseArgs {
  final pulumi.Input<String> catalogId;
  /// Required. The ID to use for the database, which will become the final component of the database's resource name.
  final pulumi.Input<String> databaseId;
  /// Options of a Hive database.
  final pulumi.Input<HiveDatabaseOptions>? hiveOptions;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// The database type.
  final pulumi.Input<DatabaseType>? type;

  /// Creates a new [DatabaseArgs].
  /// [catalogId] Required.
  /// [databaseId] Required. The ID to use for the database, which will become the final component of the database's resource name.
  /// [hiveOptions] Options of a Hive database.
  /// [location] Optional.
  /// [project] Optional.
  /// [type] The database type.
  DatabaseArgs({
    required this.catalogId,
    required this.databaseId,
    this.hiveOptions,
    this.location,
    this.project,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'databaseId': databaseId,
      'hiveOptions': ?pulumi.Input.mapOptionalInputValue<HiveDatabaseOptions, Map<String, dynamic>>(hiveOptions, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseType, String>(type, (value) => value.value),
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      catalogId: (map['catalogId'] as String).input(),
      databaseId: (map['databaseId'] as String).input(),
      hiveOptions: map['hiveOptions'] == null ? null : (HiveDatabaseOptions.fromMap((map['hiveOptions']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      type: map['type'] == null ? null : (DatabaseType.fromValue(map['type']! as String)).input(),
    );
  }
}

