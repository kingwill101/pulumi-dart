// ignore_for_file: unused_element, unnecessary_cast


/// PostgreSQL Column.
class PostgresqlColumnResponse {
  /// Column name.
  final String column;
  /// The PostgreSQL data type.
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

  /// Creates a new [PostgresqlColumnResponse].
  /// [column] Column name.
  /// [dataType] The PostgreSQL data type.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  PostgresqlColumnResponse({
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

