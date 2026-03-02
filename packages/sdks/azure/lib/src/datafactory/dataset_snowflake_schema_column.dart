// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatasetSnowflakeSchemaColumn {
  /// The name of the column.
  final pulumi.Input<String> name;
  /// The total number of digits allowed.
  final pulumi.Input<int>? precision;
  /// The number of digits allowed to the right of the decimal point.
  final pulumi.Input<int>? scale;
  /// Type of the column. Valid values are `NUMBER`, `DECIMAL`, `NUMERIC`, `INT`, `INTEGER`, `BIGINT`, `SMALLINT`, `FLOAT``FLOAT4`, `FLOAT8`, `DOUBLE`, `DOUBLE PRECISION`, `REAL`, `VARCHAR`, `CHAR`, `CHARACTER`, `STRING`, `TEXT`, `BINARY`, `VARBINARY`, `BOOLEAN`, `DATE`, `DATETIME`, `TIME`, `TIMESTAMP`, `TIMESTAMP_LTZ`, `TIMESTAMP_NTZ`, `TIMESTAMP_TZ`, `VARIANT`, `OBJECT`, `ARRAY`, `GEOGRAPHY`. Please note these values are case sensitive.
  final pulumi.Input<String>? type;

  /// Creates a new [DatasetSnowflakeSchemaColumn].
  /// [name] The name of the column.
  /// [precision] The total number of digits allowed.
  /// [scale] The number of digits allowed to the right of the decimal point.
  /// [type] Type of the column. Valid values are `NUMBER`, `DECIMAL`, `NUMERIC`, `INT`, `INTEGER`, `BIGINT`, `SMALLINT`, `FLOAT``FLOAT4`, `FLOAT8`, `DOUBLE`, `DOUBLE PRECISION`, `REAL`, `VARCHAR`, `CHAR`, `CHARACTER`, `STRING`, `TEXT`, `BINARY`, `VARBINARY`, `BOOLEAN`, `DATE`, `DATETIME`, `TIME`, `TIMESTAMP`, `TIMESTAMP_LTZ`, `TIMESTAMP_NTZ`, `TIMESTAMP_TZ`, `VARIANT`, `OBJECT`, `ARRAY`, `GEOGRAPHY`. Please note these values are case sensitive.
  DatasetSnowflakeSchemaColumn({
    required this.name,
    this.precision,
    this.scale,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'precision': ?precision,
      'scale': ?scale,
      'type': ?type,
    };
  }

  factory DatasetSnowflakeSchemaColumn.fromMap(Map<String, dynamic> map) {
    return DatasetSnowflakeSchemaColumn(
      name: (map['name'] as String).input(),
      precision: map['precision'] == null ? null : (map['precision'] as int).input(),
      scale: map['scale'] == null ? null : (map['scale'] as int).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

