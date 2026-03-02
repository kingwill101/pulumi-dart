// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn {
  /// Column name.
  final pulumi.Input<String>? column;
  /// The Oracle data type. Full data types list can be found here:
  /// https://docs.oracle.com/en/database/oracle/oracle-database/21/sqlrf/Data-Types.html
  final pulumi.Input<String>? dataType;
  /// (Output)
  /// Column encoding.
  final pulumi.Input<String>? encoding;
  /// (Output)
  /// Column length.
  final pulumi.Input<int>? length;
  /// (Output)
  /// Whether or not the column can accept a null value.
  final pulumi.Input<bool>? nullable;
  /// (Output)
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;
  /// (Output)
  /// Column precision.
  final pulumi.Input<int>? precision;
  /// (Output)
  /// Whether or not the column represents a primary key.
  final pulumi.Input<bool>? primaryKey;
  /// (Output)
  /// Column scale.
  final pulumi.Input<int>? scale;

  /// Creates a new [StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn].
  /// [column] Column name.
  /// [dataType] The Oracle data type. Full data types list can be found here:
  /// [encoding] (Output)
  /// [length] (Output)
  /// [nullable] (Output)
  /// [ordinalPosition] (Output)
  /// [precision] (Output)
  /// [primaryKey] (Output)
  /// [scale] (Output)
  StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn({
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

  factory StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfigExcludeObjectsOracleSchemaOracleTableOracleColumn(
      column: map['column'] == null ? null : (map['column']! as String).input(),
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

