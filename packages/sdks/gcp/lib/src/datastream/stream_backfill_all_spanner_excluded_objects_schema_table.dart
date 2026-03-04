// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_spanner_excluded_objects_schema_table_column.dart';

class StreamBackfillAllSpannerExcludedObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<
    List<StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn>
  >?
  columns;

  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamBackfillAllSpannerExcludedObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  StreamBackfillAllSpannerExcludedObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          ?pulumi.Input.mapOptionalInputValue<
            List<StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'table': table,
    };
  }

  factory StreamBackfillAllSpannerExcludedObjectsSchemaTable.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamBackfillAllSpannerExcludedObjectsSchemaTable(
      columns: (() {
        final guardedValue = map['columns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn
          >(
            guardedValue,
            (value) =>
                StreamBackfillAllSpannerExcludedObjectsSchemaTableColumn.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
