// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_table_spec_response.dart';
import 'google_cloud_datacatalog_v1_view_spec_response.dart';

/// Describes a BigQuery table.
class GoogleCloudDatacatalogV1BigQueryTableSpecResponse {
  /// The table source type.
  final pulumi.Input<String> tableSourceType;
  /// Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  final pulumi.Input<GoogleCloudDatacatalogV1TableSpecResponse> tableSpec;
  /// Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  final pulumi.Input<GoogleCloudDatacatalogV1ViewSpecResponse> viewSpec;

  /// Creates a new [GoogleCloudDatacatalogV1BigQueryTableSpecResponse].
  /// [tableSourceType] The table source type.
  /// [tableSpec] Specification of a BigQuery table. Populated only if the `table_source_type` is `BIGQUERY_TABLE`.
  /// [viewSpec] Table view specification. Populated only if the `table_source_type` is `BIGQUERY_VIEW`.
  const GoogleCloudDatacatalogV1BigQueryTableSpecResponse({
    required this.tableSourceType,
    required this.tableSpec,
    required this.viewSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tableSourceType': tableSourceType,
      'tableSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1TableSpecResponse, Map<String, dynamic>>(tableSpec, (value) => value.toMap()),
      'viewSpec': pulumi.Input.mapInputValue<GoogleCloudDatacatalogV1ViewSpecResponse, Map<String, dynamic>>(viewSpec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1BigQueryTableSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BigQueryTableSpecResponse(
      tableSourceType: pulumi.Input.fromValue(map['tableSourceType'] as String),
      tableSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1TableSpecResponse.fromMap((map['tableSpec']! as Map).cast<String, dynamic>())),
      viewSpec: pulumi.Input.fromValue(GoogleCloudDatacatalogV1ViewSpecResponse.fromMap((map['viewSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

