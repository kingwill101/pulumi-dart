// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1beta1_fhir_big_query_destination_write_disposition.dart';
import 'schema_config_healthcare_v1beta1.dart';

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1beta1FhirBigQueryDestination {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  final pulumi.Input<String>? datasetUri;
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final pulumi.Input<bool>? force;
  /// The configuration for the exported BigQuery schema.
  final pulumi.Input<SchemaConfigHealthcareV1beta1>? schemaConfig;
  /// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  final pulumi.Input<GoogleCloudHealthcareV1beta1FhirBigQueryDestinationWriteDisposition>? writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1beta1FhirBigQueryDestination].
  /// [datasetUri] BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  /// [force] Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [schemaConfig] The configuration for the exported BigQuery schema.
  /// [writeDisposition] Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  GoogleCloudHealthcareV1beta1FhirBigQueryDestination({
    this.datasetUri,
    this.force,
    this.schemaConfig,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetUri': ?datasetUri,
      'force': ?force,
      'schemaConfig': ?pulumi.Input.mapOptionalInputValue<SchemaConfigHealthcareV1beta1, Map<String, dynamic>>(schemaConfig, (value) => value.toMap()),
      'writeDisposition': ?pulumi.Input.mapOptionalInputValue<GoogleCloudHealthcareV1beta1FhirBigQueryDestinationWriteDisposition, String>(writeDisposition, (value) => value.value),
    };
  }

  factory GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1FhirBigQueryDestination(
      datasetUri: map['datasetUri'] == null ? null : (map['datasetUri'] as String).input(),
      force: map['force'] == null ? null : (map['force'] as bool).input(),
      schemaConfig: map['schemaConfig'] == null ? null : (SchemaConfigHealthcareV1beta1.fromMap((map['schemaConfig'] as Map).cast<String, dynamic>())).input(),
      writeDisposition: map['writeDisposition'] == null ? null : (GoogleCloudHealthcareV1beta1FhirBigQueryDestinationWriteDisposition.fromValue(map['writeDisposition'] as String)).input(),
    );
  }
}

