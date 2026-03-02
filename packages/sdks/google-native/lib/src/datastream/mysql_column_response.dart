// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MySQL Column.
class MysqlColumnResponse {
  /// Column collation.
  final pulumi.Input<String> collation;
  /// Column name.
  final pulumi.Input<String> column;
  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
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

  /// Creates a new [MysqlColumnResponse].
  /// [collation] Column collation.
  /// [column] Column name.
  /// [dataType] The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  MysqlColumnResponse({
    required this.collation,
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
      'collation': collation,
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

  factory MysqlColumnResponse.fromMap(Map<String, dynamic> map) {
    return MysqlColumnResponse(
      collation: (map['collation'] as String).input(),
      column: (map['column'] as String).input(),
      dataType: (map['dataType'] as String).input(),
      length: (map['length'] as int).input(),
      nullable: (map['nullable'] as bool).input(),
      ordinalPosition: (map['ordinalPosition'] as int).input(),
      precision: (map['precision'] as int).input(),
      primaryKey: (map['primaryKey'] as bool).input(),
      scale: (map['scale'] as int).input(),
    );
  }
}

