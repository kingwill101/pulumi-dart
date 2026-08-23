// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle Column.
class OracleColumn {
  /// Column name.
  final pulumi.Input<String>? column;
  /// The Oracle data type.
  final pulumi.Input<String>? dataType;
  /// Column encoding.
  final pulumi.Input<String>? encoding;
  /// Column length.
  final pulumi.Input<int>? length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// Column precision.
  final pulumi.Input<int>? precision;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;
  /// Column scale.
  final pulumi.Input<int>? scale;

  /// Creates a new [OracleColumn].
  /// [column] Column name.
  /// [dataType] The Oracle data type.
  /// [encoding] Column encoding.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  const OracleColumn({
    this.column,
    this.dataType,
    this.encoding,
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
      'encoding': ?encoding,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'precision': ?precision,
      'primaryKey': ?primaryKey,
      'scale': ?scale,
    };
  }

  factory OracleColumn.fromMap(Map<String, dynamic> map) {
    return OracleColumn(
      column: (() { final guardedValue = map['column']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      length: (() { final guardedValue = map['length']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nullable: (() { final guardedValue = map['nullable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ordinalPosition: (() { final guardedValue = map['ordinalPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      precision: (() { final guardedValue = map['precision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
