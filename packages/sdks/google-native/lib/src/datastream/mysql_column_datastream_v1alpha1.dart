// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MySQL Column.
class MysqlColumnDatastreamV1alpha1 {
  /// Column collation.
  final pulumi.Input<String>? collation;
  /// Column name.
  final pulumi.Input<String>? columnName;
  /// The MySQL data type. Full data types list can be found here: https://dev.mysql.com/doc/refman/8.0/en/data-types.html
  final pulumi.Input<String>? dataType;
  /// Column length.
  final pulumi.Input<int>? length;
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;

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
      collation: map['collation'] == null ? null : (map['collation']! as String).input(),
      columnName: map['columnName'] == null ? null : (map['columnName']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      length: map['length'] == null ? null : (map['length']! as int).input(),
      nullable: map['nullable'] == null ? null : (map['nullable']! as bool).input(),
      ordinalPosition: map['ordinalPosition'] == null ? null : (map['ordinalPosition']! as int).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as bool).input(),
    );
  }
}

