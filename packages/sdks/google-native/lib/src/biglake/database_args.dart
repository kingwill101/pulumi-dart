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
  const DatabaseArgs({
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
      'type': ?pulumi.Input.mapOptionalInputValue<DatabaseType, String>(type, (value) => value.wireValue),
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      databaseId: pulumi.Input.fromValue(map['databaseId'] as String),
      hiveOptions: (() { final guardedValue = map['hiveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HiveDatabaseOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabaseType.fromValue(guardedValue as String)); })(),
    );
  }
}

