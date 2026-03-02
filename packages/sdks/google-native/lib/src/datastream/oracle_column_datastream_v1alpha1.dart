// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Oracle Column.
class OracleColumnDatastreamV1alpha1 {
  /// Column name.
  final pulumi.Input<String>? columnName;
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

  /// Creates a new [OracleColumnDatastreamV1alpha1].
  /// [columnName] Column name.
  /// [dataType] The Oracle data type.
  /// [encoding] Column encoding.
  /// [length] Column length.
  /// [nullable] Whether or not the column can accept a null value.
  /// [ordinalPosition] The ordinal position of the column in the table.
  /// [precision] Column precision.
  /// [primaryKey] Whether or not the column represents a primary key.
  /// [scale] Column scale.
  OracleColumnDatastreamV1alpha1({
    this.columnName,
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
      'columnName': ?columnName,
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

  factory OracleColumnDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleColumnDatastreamV1alpha1(
      columnName: map['columnName'] == null ? null : (map['columnName']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      length: map['length'] == null ? null : (map['length']! as int).input(),
      nullable: map['nullable'] == null ? null : (map['nullable']! as bool).input(),
      ordinalPosition: map['ordinalPosition'] == null ? null : (map['ordinalPosition']! as int).input(),
      precision: map['precision'] == null ? null : (map['precision']! as int).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as bool).input(),
      scale: map['scale'] == null ? null : (map['scale']! as int).input(),
    );
  }
}

