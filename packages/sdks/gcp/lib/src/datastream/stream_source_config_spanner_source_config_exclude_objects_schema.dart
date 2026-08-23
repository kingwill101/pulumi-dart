// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_exclude_objects_schema_table.dart';

class StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable>>? tables;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  const StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigExcludeObjectsSchema(
      schema: pulumi.Input.fromValue(map['schema'] as String),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable>(guardedValue, (value) => StreamSourceConfigSpannerSourceConfigExcludeObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
