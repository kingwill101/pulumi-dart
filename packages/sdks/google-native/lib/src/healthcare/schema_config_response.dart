// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_partitioning_response.dart';

/// Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
class SchemaConfigResponse {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  final pulumi.Input<TimePartitioningResponse> lastUpdatedPartitionConfig;
  /// The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  final pulumi.Input<String> recursiveStructureDepth;
  /// Specifies the output schema type. Schema type is required.
  final pulumi.Input<String> schemaType;

  /// Creates a new [SchemaConfigResponse].
  /// [lastUpdatedPartitionConfig] The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  /// [recursiveStructureDepth] The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  /// [schemaType] Specifies the output schema type. Schema type is required.
  const SchemaConfigResponse({
    required this.lastUpdatedPartitionConfig,
    required this.recursiveStructureDepth,
    required this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedPartitionConfig': pulumi.Input.mapInputValue<TimePartitioningResponse, Map<String, dynamic>>(lastUpdatedPartitionConfig, (value) => value.toMap()),
      'recursiveStructureDepth': recursiveStructureDepth,
      'schemaType': schemaType,
    };
  }

  factory SchemaConfigResponse.fromMap(Map<String, dynamic> map) {
    return SchemaConfigResponse(
      lastUpdatedPartitionConfig: pulumi.Input.fromValue(TimePartitioningResponse.fromMap((map['lastUpdatedPartitionConfig']! as Map).cast<String, dynamic>())),
      recursiveStructureDepth: pulumi.Input.fromValue(map['recursiveStructureDepth'] as String),
      schemaType: pulumi.Input.fromValue(map['schemaType'] as String),
    );
  }
}

