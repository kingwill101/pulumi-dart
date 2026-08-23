// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_column_schema.dart';

/// Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
class GoogleCloudDatacatalogV1Schema {
  /// The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested columns is 10,000. The maximum nested depth is 15 levels.
  final pulumi.Input<List<GoogleCloudDatacatalogV1ColumnSchema>>? columns;

  /// Creates a new [GoogleCloudDatacatalogV1Schema].
  /// [columns] The unified GoogleSQL-like schema of columns. The overall maximum number of columns and nested columns is 10,000. The maximum nested depth is 15 levels.
  const GoogleCloudDatacatalogV1Schema({
    this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDatacatalogV1ColumnSchema>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1ColumnSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDatacatalogV1Schema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1Schema(
      columns: (() { final guardedValue = map['columns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1ColumnSchema>(guardedValue, (value) => GoogleCloudDatacatalogV1ColumnSchema.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
