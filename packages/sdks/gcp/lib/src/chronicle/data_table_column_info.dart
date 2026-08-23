// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataTableColumnInfo {
  /// Column Index. 0,1,2...
  final pulumi.Input<int> columnIndex;
  /// Column type can be STRING, CIDR (Ex- 10.1.1.0/24), REGEX
  /// Possible values:
  /// STRING
  /// REGEX
  /// CIDR
  /// NUMBER
  /// Possible values are: `STRING`, `REGEX`, `CIDR`, `NUMBER`.
  final pulumi.Input<String>? columnType;
  /// Whether to include this column in the calculation of the row ID.
  /// If no columns have keyColumn = true, all columns will be included in the
  /// calculation of the row ID.
  final pulumi.Input<bool>? keyColumn;
  /// Entity proto field path that the column is mapped to
  final pulumi.Input<String>? mappedColumnPath;
  /// Original column name of the Data Table (present in the CSV header in case
  /// of creation of data tables using file uploads). It must satisfy the
  /// following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Must be unique and has length &lt; 256
  final pulumi.Input<String> originalColumn;
  /// Whether the column is a repeated values column.
  final pulumi.Input<bool>? repeatedValues;

  /// Creates a new [DataTableColumnInfo].
  /// [columnIndex] Column Index. 0,1,2...
  /// [columnType] Column type can be STRING, CIDR (Ex- 10.1.1.0/24), REGEX
  /// [keyColumn] Whether to include this column in the calculation of the row ID.
  /// [mappedColumnPath] Entity proto field path that the column is mapped to
  /// [originalColumn] Original column name of the Data Table (present in the CSV header in case
  /// [repeatedValues] Whether the column is a repeated values column.
  const DataTableColumnInfo({
    required this.columnIndex,
    this.columnType,
    this.keyColumn,
    this.mappedColumnPath,
    required this.originalColumn,
    this.repeatedValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnIndex': columnIndex,
      'columnType': ?columnType,
      'keyColumn': ?keyColumn,
      'mappedColumnPath': ?mappedColumnPath,
      'originalColumn': originalColumn,
      'repeatedValues': ?repeatedValues,
    };
  }

  factory DataTableColumnInfo.fromMap(Map<String, dynamic> map) {
    return DataTableColumnInfo(
      columnIndex: pulumi.Input.fromValue(map['columnIndex'] as int),
      columnType: (() { final guardedValue = map['columnType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyColumn: (() { final guardedValue = map['keyColumn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mappedColumnPath: (() { final guardedValue = map['mappedColumnPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalColumn: pulumi.Input.fromValue(map['originalColumn'] as String),
      repeatedValues: (() { final guardedValue = map['repeatedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
