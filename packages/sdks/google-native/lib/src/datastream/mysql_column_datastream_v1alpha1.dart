// ignore_for_file: unused_element, unnecessary_cast


/// MySQL Column.
class MysqlColumnDatastreamV1alpha1 {
  /// Column collation.
  final String? collation;
  /// Column name.
  final String? columnName;
  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final String? dataType;
  /// Column length.
  final int? length;
  /// Whether or not the column can accept a null value.
  final bool? nullable;
  /// The ordinal position of the column in the table.
  final int? ordinalPosition;
  /// Whether or not the column represents a primary key.
  final bool? primaryKey;

  /// Creates a new [MysqlColumnDatastreamV1alpha1].
  /// [collation] Column collation.
  /// [columnName] Column name.
  /// [dataType] The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [primaryKey] Whether or not the column represents a primary key.
  MysqlColumnDatastreamV1alpha1({
    this.collation,
    this.columnName,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'columnName': ?columnName,
      'dataType': ?dataType,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'primaryKey': ?primaryKey,
    };
  }

  factory MysqlColumnDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlColumnDatastreamV1alpha1(
      collation: map['collation'] == null ? null : map['collation'] as String,
      columnName: map['columnName'] == null ? null : map['columnName'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      length: map['length'] == null ? null : map['length'] as int,
      nullable: map['nullable'] == null ? null : map['nullable'] as bool,
      ordinalPosition: map['ordinalPosition'] == null ? null : map['ordinalPosition'] as int,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as bool,
    );
  }
}

