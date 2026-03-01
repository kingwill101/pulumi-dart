// ignore_for_file: unused_element, unnecessary_cast


/// MySQL Column.
class MysqlColumnResponse {
  /// Column collation.
  final String collation;
  /// Column name.
  final String column;
  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final String dataType;
  /// Column length.
  final int length;
  /// Whether or not the column can accept a null value.
  final bool nullable;
  /// The ordinal position of the column in the table.
  final int ordinalPosition;
  /// Column precision.
  final int precision;
  /// Whether or not the column represents a primary key.
  final bool primaryKey;
  /// Column scale.
  final int scale;

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
      collation: map['collation'] as String,
      column: map['column'] as String,
      dataType: map['dataType'] as String,
      length: map['length'] as int,
      nullable: map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] as int,
      precision: map['precision'] as int,
      primaryKey: map['primaryKey'] as bool,
      scale: map['scale'] as int,
    );
  }
}

