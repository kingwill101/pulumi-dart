// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_looker_golden_query_looker_query.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery {
  /// Optional. The Looker Query corresponding to the natural language questions.
  /// Structure is documented below.
  final pulumi.Input<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQuery?>? lookerQuery;
  /// Optional. Natural language questions that a user might ask.
  final pulumi.Input<List<String>?>? naturalLanguageQuestions;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery].
  /// [lookerQuery] Optional. The Looker Query corresponding to the natural language questions.
  /// [naturalLanguageQuestions] Optional. Natural language questions that a user might ask.
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery({
    this.lookerQuery,
    this.naturalLanguageQuestions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lookerQuery': ?pulumi.Input.mapOptionalInputValue<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQuery, Map<String, dynamic>>(lookerQuery, (value) => value.toMap()),
      'naturalLanguageQuestions': ?naturalLanguageQuestions,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQuery(
      lookerQuery: (() { final guardedValue = map['lookerQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextLookerGoldenQueryLookerQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      naturalLanguageQuestions: (() { final guardedValue = map['naturalLanguageQuestions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
