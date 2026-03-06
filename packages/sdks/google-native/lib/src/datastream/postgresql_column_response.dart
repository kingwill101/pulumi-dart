// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PostgreSQL Column.
class PostgresqlColumnResponse {
  /// Column name.
  final pulumi.Input<String> column;
  /// The PostgreSQL data type.
  final pulumi.Input<String> dataType;
  /// Column length.
  final pulumi.Input<int> length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool> nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int> ordinalPosition;
  /// Column precision.
  final pulumi.Input<int> precision;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool> primaryKey;
  /// Column scale.
  final pulumi.Input<int> scale;

  /// Creates a new [PostgresqlColumnResponse].
  /// [column] Column name.
  /// [dataType] The PostgreSQL data type.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  const PostgresqlColumnResponse({
    required this.column,
    required this.dataType,
    required this.length,
    required this.nullable,
    required this.ordinalPosition,
    required this.precision,
    required this.primaryKey,
    required this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'dataType': dataType,
      'length': length,
      'nullable': nullable,
      'ordinalPosition': ordinalPosition,
      'precision': precision,
      'primaryKey': primaryKey,
      'scale': scale,
    };
  }

  factory PostgresqlColumnResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlColumnResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      length: pulumi.Input.fromValue(map['length'] as int),
      nullable: pulumi.Input.fromValue(map['nullable'] as bool),
      ordinalPosition: pulumi.Input.fromValue(map['ordinalPosition'] as int),
      precision: pulumi.Input.fromValue(map['precision'] as int),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as bool),
      scale: pulumi.Input.fromValue(map['scale'] as int),
    );
  }
}

