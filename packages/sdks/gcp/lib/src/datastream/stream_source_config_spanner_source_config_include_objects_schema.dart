// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_spanner_source_config_include_objects_schema_table.dart';

class StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema {
  /// Schema name.
  final pulumi.Input<String> schema;
  /// Tables in the schema.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable>>? tables;

  /// Creates a new [StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema].
  /// [schema] Schema name.
  /// [tables] Tables in the schema.
  StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema({
    required this.schema,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schema': schema,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSpannerSourceConfigIncludeObjectsSchema(
      schema: (map['schema'] as String).input(),
      tables: map['tables'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable>(map['tables']!, (value) => StreamSourceConfigSpannerSourceConfigIncludeObjectsSchemaTable.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

