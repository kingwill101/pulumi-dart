// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_exclude_objects_schema_table_column.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable {
  /// Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn>>? columns;
  /// Table name.
  final pulumi.Input<String> table;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable].
  /// [columns] Spanner columns in the table. When unspecified as part of include/exclude objects, includes/excludes everything.
  /// [table] Table name.
  const StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable({
    this.columns,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': table,
    };
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn>(guardedValue, (value) => StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTableColumn.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: pulumi.Input.fromValue(map['table'] as String),
    );
  }
}
