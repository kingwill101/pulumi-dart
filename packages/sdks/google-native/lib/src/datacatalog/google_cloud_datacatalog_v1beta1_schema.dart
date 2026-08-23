// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1beta1_column_schema.dart';

/// Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
class GoogleCloudDatacatalogV1beta1Schema {
  /// Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  final pulumi.Input<List<GoogleCloudDatacatalogV1beta1ColumnSchema>> columns;

  /// Creates a new [GoogleCloudDatacatalogV1beta1Schema].
  /// [columns] Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  const GoogleCloudDatacatalogV1beta1Schema({
    required this.columns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns': pulumi.Input.mapInputValue<List<GoogleCloudDatacatalogV1beta1ColumnSchema>, List<Map<String, dynamic>>>(columns, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1beta1ColumnSchema, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDatacatalogV1beta1Schema.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1Schema(
      columns: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1beta1ColumnSchema>(map['columns']!, (value) => GoogleCloudDatacatalogV1beta1ColumnSchema.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
