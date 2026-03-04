// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_healthcare_v1_fhir_big_query_destination_write_disposition.dart';
import 'schema_config.dart';

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1FhirBigQueryDestination {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  final pulumi.Input<String>? datasetUri;

  /// If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final pulumi.Input<bool>? force;

  /// The configuration for the exported BigQuery schema.
  final pulumi.Input<SchemaConfig>? schemaConfig;

  /// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  final pulumi.Input<
    GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition
  >?
  writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1FhirBigQueryDestination].
  /// [datasetUri] BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  /// [force] If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [schemaConfig] The configuration for the exported BigQuery schema.
  /// [writeDisposition] Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  GoogleCloudHealthcareV1FhirBigQueryDestination({
    this.datasetUri,
    this.force,
    this.schemaConfig,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetUri': ?datasetUri,
      'force': ?force,
      'schemaConfig':
          ?pulumi.Input.mapOptionalInputValue<
            SchemaConfig,
            Map<String, dynamic>
          >(schemaConfig, (value) => value.toMap()),
      'writeDisposition':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition,
            String
          >(writeDisposition, (value) => value.wireValue),
    };
  }

  factory GoogleCloudHealthcareV1FhirBigQueryDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudHealthcareV1FhirBigQueryDestination(
      datasetUri: (() {
        final guardedValue = map['datasetUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      force: (() {
        final guardedValue = map['force'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      schemaConfig: (() {
        final guardedValue = map['schemaConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SchemaConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      writeDisposition: (() {
        final guardedValue = map['writeDisposition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudHealthcareV1FhirBigQueryDestinationWriteDisposition.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
