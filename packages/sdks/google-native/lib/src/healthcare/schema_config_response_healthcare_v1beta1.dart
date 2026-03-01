// ignore_for_file: unused_element, unnecessary_cast

import 'time_partitioning_response_healthcare_v1beta1.dart';

/// Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
class SchemaConfigResponseHealthcareV1beta1 {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  final TimePartitioningResponseHealthcareV1beta1 lastUpdatedPartitionConfig;
  /// The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  final String recursiveStructureDepth;
  /// Specifies the output schema type. Schema type is required.
  final String schemaType;

  /// Creates a new [SchemaConfigResponseHealthcareV1beta1].
  /// [lastUpdatedPartitionConfig] The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  /// [recursiveStructureDepth] The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  /// [schemaType] Specifies the output schema type. Schema type is required.
  SchemaConfigResponseHealthcareV1beta1({
    required this.lastUpdatedPartitionConfig,
    required this.recursiveStructureDepth,
    required this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedPartitionConfig': lastUpdatedPartitionConfig.toMap(),
      'recursiveStructureDepth': recursiveStructureDepth,
      'schemaType': schemaType,
    };
  }

  factory SchemaConfigResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchemaConfigResponseHealthcareV1beta1(
      lastUpdatedPartitionConfig: TimePartitioningResponseHealthcareV1beta1.fromMap((map['lastUpdatedPartitionConfig'] as Map).cast<String, dynamic>()),
      recursiveStructureDepth: map['recursiveStructureDepth'] as String,
      schemaType: map['schemaType'] as String,
    );
  }
}

