// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier {
  /// The database name. Required only if the object uses
  /// a database name as part of its unique identifier.
  final pulumi.Input<String>? database;
  /// The schema name. Required only if the object uses
  /// a schema name as part of its unique identifier.
  final pulumi.Input<String>? schema;
  /// The table name. Required only if the object is a level
  /// below database or schema.
  final pulumi.Input<String>? table;
  /// The category of the migration job object: `DATABASE`,
  /// `SCHEMA`, or `TABLE`.
  /// Possible values are: `DATABASE`, `SCHEMA`, `TABLE`.
  final pulumi.Input<String> type;

  /// Creates a new [MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier].
  /// [database] The database name. Required only if the object uses
  /// [schema] The schema name. Required only if the object uses
  /// [table] The table name. Required only if the object is a level
  /// [type] The category of the migration job object: `DATABASE`,
  const MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier({
    this.database,
    this.schema,
    this.table,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'schema': ?schema,
      'table': ?table,
      'type': type,
    };
  }

  factory MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier.fromMap(Map<String, dynamic> map) {
    return MigrationJobObjectsConfigSourceObjectsConfigObjectConfigObjectIdentifier(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
