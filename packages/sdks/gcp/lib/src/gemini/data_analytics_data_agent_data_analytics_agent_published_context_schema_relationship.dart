// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_schema_relationship_left_schema_paths.dart';
import 'data_analytics_data_agent_data_analytics_agent_published_context_schema_relationship_right_schema_paths.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship {
  /// Optional. A confidence score for the suggested relationship.
  final pulumi.Input<double?>? confidenceScore;
  /// Required. An ordered list of fields for the left side of the join.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths> leftSchemaPaths;
  /// Required. An ordered list of fields for the right side of the join.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths> rightSchemaPaths;
  /// Optional. Sources which generated the schema relation edge.
  /// Possible values: BIGQUERY_JOB_HISTORY, LLM_SUGGESTED, BIGQUERY_TABLE_CONSTRAINTS.
  final pulumi.Input<List<String>?>? sources;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship].
  /// [confidenceScore] Optional. A confidence score for the suggested relationship.
  /// [leftSchemaPaths] Required. An ordered list of fields for the left side of the join.
  /// [rightSchemaPaths] Required. An ordered list of fields for the right side of the join.
  /// [sources] Optional. Sources which generated the schema relation edge.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship({
    this.confidenceScore,
    required this.leftSchemaPaths,
    required this.rightSchemaPaths,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceScore': ?confidenceScore,
      'leftSchemaPaths': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths, Map<String, dynamic>>(leftSchemaPaths, (value) => value.toMap()),
      'rightSchemaPaths': pulumi.Input.mapInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths, Map<String, dynamic>>(rightSchemaPaths, (value) => value.toMap()),
      'sources': ?sources,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationship(
      confidenceScore: (() { final guardedValue = map['confidenceScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      leftSchemaPaths: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipLeftSchemaPaths.fromMap((map['leftSchemaPaths']! as Map).cast<String, dynamic>())),
      rightSchemaPaths: pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextSchemaRelationshipRightSchemaPaths.fromMap((map['rightSchemaPaths']! as Map).cast<String, dynamic>())),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
