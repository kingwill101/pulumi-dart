// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_looker_golden_query_looker_query.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQuery {
  /// Optional. The Looker Query corresponding to the natural language questions.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery?>? lookerQuery;
  /// Optional. Natural language questions that a user might ask.
  final pulumi.Input<List<String>?>? naturalLanguageQuestions;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQuery].
  /// [lookerQuery] Optional. The Looker Query corresponding to the natural language questions.
  /// [naturalLanguageQuestions] Optional. Natural language questions that a user might ask.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQuery({
    this.lookerQuery,
    this.naturalLanguageQuestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookerQuery': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery, Map<String, dynamic>>(lookerQuery, (value) => value.toMap()),
      'naturalLanguageQuestions': ?naturalLanguageQuestions,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQuery(
      lookerQuery: (() { final guardedValue = map['lookerQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentStagingContextLookerGoldenQueryLookerQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      naturalLanguageQuestions: (() { final guardedValue = map['naturalLanguageQuestions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
