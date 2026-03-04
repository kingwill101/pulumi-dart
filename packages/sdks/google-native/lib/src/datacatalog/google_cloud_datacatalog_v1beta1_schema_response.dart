// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1beta1_column_schema_response.dart';

/// Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
class GoogleCloudDatacatalogV1beta1SchemaResponse {
  /// Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  final pulumi.Input<List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>>
  columns;

  /// Creates a new [GoogleCloudDatacatalogV1beta1SchemaResponse].
  /// [columns] Schema of columns. A maximum of 10,000 columns and sub-columns can be specified.
  GoogleCloudDatacatalogV1beta1SchemaResponse({required this.columns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columns':
          pulumi.Input.mapInputValue<
            List<GoogleCloudDatacatalogV1beta1ColumnSchemaResponse>,
            List<Map<String, dynamic>>
          >(
            columns,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudDatacatalogV1beta1ColumnSchemaResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudDatacatalogV1beta1SchemaResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1beta1SchemaResponse(
      columns: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudDatacatalogV1beta1ColumnSchemaResponse
        >(
          map['columns']!,
          (value) => GoogleCloudDatacatalogV1beta1ColumnSchemaResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
