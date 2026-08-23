// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_config_schema_type.dart';
import 'time_partitioning.dart';

/// Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
class SchemaConfig {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  final pulumi.Input<TimePartitioning>? lastUpdatedPartitionConfig;
  /// The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  final pulumi.Input<String>? recursiveStructureDepth;
  /// Specifies the output schema type. Schema type is required.
  final pulumi.Input<SchemaConfigSchemaType>? schemaType;

  /// Creates a new [SchemaConfig].
  /// [lastUpdatedPartitionConfig] The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  /// [recursiveStructureDepth] The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  /// [schemaType] Specifies the output schema type. Schema type is required.
  const SchemaConfig({
    this.lastUpdatedPartitionConfig,
    this.recursiveStructureDepth,
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedPartitionConfig': ?pulumi.Input.mapOptionalInputValue<TimePartitioning, Map<String, dynamic>>(lastUpdatedPartitionConfig, (value) => value.toMap()),
      'recursiveStructureDepth': ?recursiveStructureDepth,
      'schemaType': ?pulumi.Input.mapOptionalInputValue<SchemaConfigSchemaType, String>(schemaType, (value) => value.wireValue),
    };
  }

  factory SchemaConfig.fromMap(Map<String, dynamic> map) {
    return SchemaConfig(
      lastUpdatedPartitionConfig: (() { final guardedValue = map['lastUpdatedPartitionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimePartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recursiveStructureDepth: (() { final guardedValue = map['recursiveStructureDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaConfigSchemaType.fromValue(guardedValue as String)); })(),
    );
  }
}
