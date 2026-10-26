// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_schema_relationship_left_schema_paths.dart';
import 'data_analytics_data_agent_data_analytics_agent_staging_context_schema_relationship_right_schema_paths.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship {
  /// Optional. A confidence score for the suggested relationship.
  final pulumi.Input<double?>? confidenceScore;
  /// Required. An ordered list of fields for the left side of the join.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipLeftSchemaPaths> leftSchemaPaths;
  /// Required. An ordered list of fields for the right side of the join.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipRightSchemaPaths> rightSchemaPaths;
  /// Optional. Sources which generated the schema relation edge.
  /// Possible values: BIGQUERY_JOB_HISTORY, LLM_SUGGESTED, BIGQUERY_TABLE_CONSTRAINTS.
  final pulumi.Input<List<String>?>? sources;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship].
  /// [confidenceScore] Optional. A confidence score for the suggested relationship.
  /// [leftSchemaPaths] Required. An ordered list of fields for the left side of the join.
  /// [rightSchemaPaths] Required. An ordered list of fields for the right side of the join.
  /// [sources] Optional. Sources which generated the schema relation edge.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship({
    this.confidenceScore,
    required this.leftSchemaPaths,
    required this.rightSchemaPaths,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': ?confidenceScore,
      'leftSchemaPaths': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipLeftSchemaPaths, Map<String, dynamic>>(leftSchemaPaths, (value) => value.toMap()),
      'rightSchemaPaths': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipRightSchemaPaths, Map<String, dynamic>>(rightSchemaPaths, (value) => value.toMap()),
      'sources': ?sources,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationship(
      confidenceScore: (() { final guardedValue = map['confidenceScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      leftSchemaPaths: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipLeftSchemaPaths.fromMap((map['leftSchemaPaths']! as Map).cast<String, dynamic>())),
      rightSchemaPaths: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextSchemaRelationshipRightSchemaPaths.fromMap((map['rightSchemaPaths']! as Map).cast<String, dynamic>())),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
