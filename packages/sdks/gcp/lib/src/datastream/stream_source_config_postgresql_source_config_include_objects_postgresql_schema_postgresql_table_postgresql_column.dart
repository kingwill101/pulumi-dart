// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn {
  /// Column name.
  final pulumi.Input<String>? column;
  /// The PostgreSQL data type. Full data types list can be found here:
  /// https://www.postgresql.org/docs/current/datatype.html
  final pulumi.Input<String>? dataType;
  /// (Output)
  /// Column length.
  final pulumi.Input<int>? length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// (Output)
  /// Column precision.
  final pulumi.Input<int>? precision;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;
  /// (Output)
  /// Column scale.
  final pulumi.Input<int>? scale;

  /// Creates a new [StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn].
  /// [column] Column name.
  /// [dataType] The PostgreSQL data type. Full data types list can be found here:
  /// [length] (Output)
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] (Output)
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] (Output)
  StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn({
    this.column,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.precision,
    this.primaryKey,
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': ?column,
      'dataType': ?dataType,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'precision': ?precision,
      'primaryKey': ?primaryKey,
      'scale': ?scale,
    };
  }

  factory StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfigIncludeObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn(
      column: map['column'] == null ? null : (map['column']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      length: map['length'] == null ? null : (map['length']! as int).input(),
      nullable: map['nullable'] == null ? null : (map['nullable']! as bool).input(),
      ordinalPosition: map['ordinalPosition'] == null ? null : (map['ordinalPosition']! as int).input(),
      precision: map['precision'] == null ? null : (map['precision']! as int).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as bool).input(),
      scale: map['scale'] == null ? null : (map['scale']! as int).input(),
    );
  }
}

