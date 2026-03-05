// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle Column.
class OracleColumnResponse {
  /// Column name.
  final pulumi.Input<String> column;
  /// The Oracle data type.
  final pulumi.Input<String> dataType;
  /// Column encoding.
  final pulumi.Input<String> encoding;
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

  /// Creates a new [OracleColumnResponse].
  /// [column] Column name.
  /// [dataType] The Oracle data type.
  /// [encoding] Column encoding.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  OracleColumnResponse({
    required this.column,
    required this.dataType,
    required this.encoding,
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
      'encoding': encoding,
      'length': length,
      'nullable': nullable,
      'ordinalPosition': ordinalPosition,
      'precision': precision,
      'primaryKey': primaryKey,
      'scale': scale,
    };
  }

  factory OracleColumnResponse.fromMap(Map<String, dynamic> map) {
    return OracleColumnResponse(
      column: pulumi.Input.fromValue(map['column'] as String),
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      encoding: pulumi.Input.fromValue(map['encoding'] as String),
      length: pulumi.Input.fromValue(map['length'] as int),
      nullable: pulumi.Input.fromValue(map['nullable'] as bool),
      ordinalPosition: pulumi.Input.fromValue(map['ordinalPosition'] as int),
      precision: pulumi.Input.fromValue(map['precision'] as int),
      primaryKey: pulumi.Input.fromValue(map['primaryKey'] as bool),
      scale: pulumi.Input.fromValue(map['scale'] as int),
    );
  }
}

