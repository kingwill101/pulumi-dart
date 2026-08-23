// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fhir_store_stream_config_bigquery_destination_schema_config.dart';

class FhirStoreStreamConfigBigqueryDestination {
  /// BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId
  final pulumi.Input<String> datasetUri;
  /// The configuration for the exported BigQuery schema.
  /// Structure is documented below.
  final pulumi.Input<FhirStoreStreamConfigBigqueryDestinationSchemaConfig> schemaConfig;

  /// Creates a new [FhirStoreStreamConfigBigqueryDestination].
  /// [datasetUri] BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId
  /// [schemaConfig] The configuration for the exported BigQuery schema.
  const FhirStoreStreamConfigBigqueryDestination({
    required this.datasetUri,
    required this.schemaConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetUri': datasetUri,
      'schemaConfig': pulumi.Input.mapInputValue<FhirStoreStreamConfigBigqueryDestinationSchemaConfig, Map<String, dynamic>>(schemaConfig, (value) => value.toMap()),
    };
  }

  factory FhirStoreStreamConfigBigqueryDestination.fromMap(Map<String, dynamic> map) {
    return FhirStoreStreamConfigBigqueryDestination(
      datasetUri: pulumi.Input.fromValue(map['datasetUri'] as String),
      schemaConfig: pulumi.Input.fromValue(FhirStoreStreamConfigBigqueryDestinationSchemaConfig.fromMap((map['schemaConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
