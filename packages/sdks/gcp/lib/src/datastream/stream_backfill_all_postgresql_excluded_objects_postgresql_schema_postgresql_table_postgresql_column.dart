// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn {
  /// Column name.
  final pulumi.Input<String?>? column;
  /// The PostgreSQL data type. Full data types list can be found here:
  /// https://www.postgresql.org/docs/current/datatype.html
  final pulumi.Input<String?>? dataType;
  /// (Output)
  /// Column length.
  final pulumi.Input<int?>? length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool?>? nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int?>? ordinalPosition;
  /// (Output)
  /// Column precision.
  final pulumi.Input<int?>? precision;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool?>? primaryKey;
  /// (Output)
  /// Column scale.
  final pulumi.Input<int?>? scale;

  /// Creates a new [StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn].
  /// [column] Column name.
  /// [dataType] The PostgreSQL data type. Full data types list can be found here:
  /// [length] (Output)
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] (Output)
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] (Output)
  const StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn({
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

  factory StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllPostgresqlExcludedObjectsPostgresqlSchemaPostgresqlTablePostgresqlColumn(
      column: (() { final guardedValue = map['column']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nullable: (() { final guardedValue = map['nullable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ordinalPosition: (() { final guardedValue = map['ordinalPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      precision: (() { final guardedValue = map['precision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
