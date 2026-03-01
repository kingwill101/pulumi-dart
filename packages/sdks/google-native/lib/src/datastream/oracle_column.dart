// ignore_for_file: unused_element, unnecessary_cast


/// Oracle Column.
class OracleColumn {
  /// Column name.
  final String? column;
  /// The Oracle data type.
  final String? dataType;
  /// Column encoding.
  final String? encoding;
  /// Column length.
  final int? length;
  /// Whether or not the column can accept a null value.
  final bool? nullable;
  /// The ordinal position of the column in the table.
  final int? ordinalPosition;
  /// Column precision.
  final int? precision;
  /// Whether or not the column represents a primary key.
  final bool? primaryKey;
  /// Column scale.
  final int? scale;

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
  OracleColumn({
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
      column: map['column'] == null ? null : map['column'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      length: map['length'] == null ? null : map['length'] as int,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] == null ? null : map['ordinalPosition'] as int,
      precision: map['precision'] == null ? null : map['precision'] as int,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
      scale: map['scale'] == null ? null : map['scale'] as int,
    );
  }
}

