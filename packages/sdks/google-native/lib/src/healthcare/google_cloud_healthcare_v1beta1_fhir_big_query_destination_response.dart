// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_config_response_healthcare_v1beta1.dart';

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1beta1FhirBigQueryDestinationResponse {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  final pulumi.Input<String> datasetUri;
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final pulumi.Input<bool> force;
  /// The configuration for the exported BigQuery schema.
  final pulumi.Input<SchemaConfigResponseHealthcareV1beta1> schemaConfig;
  /// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  final pulumi.Input<String> writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1beta1FhirBigQueryDestinationResponse].
  /// [datasetUri] BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  /// [force] Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [schemaConfig] The configuration for the exported BigQuery schema.
  /// [writeDisposition] Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  const GoogleCloudHealthcareV1beta1FhirBigQueryDestinationResponse({
    required this.datasetUri,
    required this.force,
    required this.schemaConfig,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetUri': datasetUri,
      'force': force,
      'schemaConfig': pulumi.Input.mapInputValue<SchemaConfigResponseHealthcareV1beta1, Map<String, dynamic>>(schemaConfig, (value) => value.toMap()),
      'writeDisposition': writeDisposition,
    };
  }

  factory GoogleCloudHealthcareV1beta1FhirBigQueryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1FhirBigQueryDestinationResponse(
      datasetUri: pulumi.Input.fromValue(map['datasetUri'] as String),
      force: pulumi.Input.fromValue(map['force'] as bool),
      schemaConfig: pulumi.Input.fromValue(SchemaConfigResponseHealthcareV1beta1.fromMap((map['schemaConfig']! as Map).cast<String, dynamic>())),
      writeDisposition: pulumi.Input.fromValue(map['writeDisposition'] as String),
    );
  }
}
