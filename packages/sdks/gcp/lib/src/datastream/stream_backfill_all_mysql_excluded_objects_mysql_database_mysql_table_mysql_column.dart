// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn {
  /// Column collation.
  final pulumi.Input<String>? collation;
  /// Column name.
  final pulumi.Input<String>? column;
  /// The MySQL data type. Full data types list can be found here:
  /// https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final pulumi.Input<String>? dataType;
  /// (Output)
  /// Column length.
  final pulumi.Input<int>? length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;

  /// Creates a new [StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn].
  /// [collation] Column collation.
  /// [column] Column name.
  /// [dataType] The MySQL data type. Full data types list can be found here:
  /// [length] (Output)
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [primaryKey] Whether or not the column represents a primary key.
  StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn({
    this.collation,
    this.column,
    this.dataType,
    this.length,
    this.nullable,
    this.ordinalPosition,
    this.primaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'column': ?column,
      'dataType': ?dataType,
      'length': ?length,
      'nullable': ?nullable,
      'ordinalPosition': ?ordinalPosition,
      'primaryKey': ?primaryKey,
    };
  }

  factory StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllMysqlExcludedObjectsMysqlDatabaseMysqlTableMysqlColumn(
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      column: map['column'] == null ? null : (map['column']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      length: map['length'] == null ? null : (map['length']! as int).input(),
      nullable: map['nullable'] == null ? null : (map['nullable']! as bool).input(),
      ordinalPosition: map['ordinalPosition'] == null ? null : (map['ordinalPosition']! as int).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as bool).input(),
    );
  }
}

