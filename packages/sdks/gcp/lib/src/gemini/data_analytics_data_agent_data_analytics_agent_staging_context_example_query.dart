// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_staging_context_example_query_parameter.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery {
  /// Optional. A natural language question that a user might ask.
  final pulumi.Input<String?>? naturalLanguageQuestion;
  /// Optional. The list of query parameters.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQueryParameter>?>? parameters;
  /// Optional. The SQL query that should be generated to answer
  /// the natural language question.
  final pulumi.Input<String?>? sqlQuery;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery].
  /// [naturalLanguageQuestion] Optional. A natural language question that a user might ask.
  /// [parameters] Optional. The list of query parameters.
  /// [sqlQuery] Optional. The SQL query that should be generated to answer
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery({
    this.naturalLanguageQuestion,
    this.parameters,
    this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'naturalLanguageQuestion': ?naturalLanguageQuestion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQueryParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlQuery': ?sqlQuery,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQuery(
      naturalLanguageQuestion: (() { final guardedValue = map['naturalLanguageQuestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQueryParameter>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentStagingContextExampleQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sqlQuery: (() { final guardedValue = map['sqlQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
