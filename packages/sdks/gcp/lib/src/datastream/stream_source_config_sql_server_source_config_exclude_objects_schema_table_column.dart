// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn {
  /// Column name.
  final pulumi.Input<String>? column;
  /// (Output)
  /// The Spanner data type. Full data types list can be found here:
  /// https://docs.cloud.google.com/spanner/docs/reference/standard-sql/data-types
  final pulumi.Input<String>? dataType;
  /// (Output)
  /// Column length.
  final pulumi.Input<int>? length;
  /// (Output)
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// (Output)
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// (Output)
  /// Column precision.
  final pulumi.Input<int>? precision;
  /// (Output)
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;
  /// (Output)
  /// Column scale.
  final pulumi.Input<int>? scale;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn].
  /// [column] Column name.
  /// [dataType] (Output)
  /// [length] (Output)
  /// [nullable] (Output)
  /// [ordinalPosition] (Output)
  /// [precision] (Output)
  /// [primaryKey] (Output)
  /// [scale] (Output)
  const StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn({
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

  factory StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfigExcludeObjectsSchemaTableColumn(
      column: (() { final guardedValue = map['column']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nullable: (() { final guardedValue = map['nullable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ordinalPosition: (() { final guardedValue = map['ordinalPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      precision: (() { final guardedValue = map['precision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
