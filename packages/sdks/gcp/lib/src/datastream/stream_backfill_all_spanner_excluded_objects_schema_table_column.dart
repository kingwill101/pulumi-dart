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
  const StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn({
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
      column: pulumi.Input.fromValue(map['column'] as String),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrimaryKey: (() { final guardedValue = map['isPrimaryKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ordinalPosition: (() { final guardedValue = map['ordinalPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
