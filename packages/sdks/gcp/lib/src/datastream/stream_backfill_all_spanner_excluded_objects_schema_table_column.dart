// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn {
  /// Column name.
  final pulumi.Input<String> column;
  /// (Output)
  /// The Spanner data type. Full data types list can be found here:
  /// https://docs.cloud.google.com/spanner/docs/reference/standard-sql/data-types
  final pulumi.Input<String>? dataType;
  /// (Output)
  /// Whether the column is a primary key.
  final pulumi.Input<bool>? isPrimaryKey;
  /// (Output)
  /// The ordinal position of the column in the table.
  final pulumi.Input<int>? ordinalPosition;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn].
  /// [column] Column name.
  /// [dataType] (Output)
  /// [isPrimaryKey] (Output)
  /// [ordinalPosition] (Output)
  StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn({
    required this.column,
    this.dataType,
    this.isPrimaryKey,
    this.ordinalPosition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'column': column,
      'dataType': ?dataType,
      'isPrimaryKey': ?isPrimaryKey,
      'ordinalPosition': ?ordinalPosition,
    };
  }

  factory StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn(
      column: (map['column'] as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      isPrimaryKey: map['isPrimaryKey'] == null ? null : (map['isPrimaryKey']! as bool).input(),
      ordinalPosition: map['ordinalPosition'] == null ? null : (map['ordinalPosition']! as int).input(),
    );
  }
}

