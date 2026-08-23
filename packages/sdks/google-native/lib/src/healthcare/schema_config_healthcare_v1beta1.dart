// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_config_schema_type_healthcare_v1beta1.dart';
import 'time_partitioning_healthcare_v1beta1.dart';

/// Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
class SchemaConfigHealthcareV1beta1 {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  final pulumi.Input<TimePartitioningHealthcareV1beta1>? lastUpdatedPartitionConfig;
  /// The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  final pulumi.Input<String>? recursiveStructureDepth;
  /// Specifies the output schema type. Schema type is required.
  final pulumi.Input<SchemaConfigSchemaTypeHealthcareV1beta1>? schemaType;

  /// Creates a new [SchemaConfigHealthcareV1beta1].
  /// [lastUpdatedPartitionConfig] The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  /// [recursiveStructureDepth] The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  /// [schemaType] Specifies the output schema type. Schema type is required.
  const SchemaConfigHealthcareV1beta1({
    this.lastUpdatedPartitionConfig,
    this.recursiveStructureDepth,
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedPartitionConfig': ?pulumi.Input.mapOptionalInputValue<TimePartitioningHealthcareV1beta1, Map<String, dynamic>>(lastUpdatedPartitionConfig, (value) => value.toMap()),
      'recursiveStructureDepth': ?recursiveStructureDepth,
      'schemaType': ?pulumi.Input.mapOptionalInputValue<SchemaConfigSchemaTypeHealthcareV1beta1, String>(schemaType, (value) => value.wireValue),
    };
  }

  factory SchemaConfigHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchemaConfigHealthcareV1beta1(
      lastUpdatedPartitionConfig: (() { final guardedValue = map['lastUpdatedPartitionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TimePartitioningHealthcareV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recursiveStructureDepth: (() { final guardedValue = map['recursiveStructureDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schemaType: (() { final guardedValue = map['schemaType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaConfigSchemaTypeHealthcareV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
