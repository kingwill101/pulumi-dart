// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_analytics_data_agent_data_analytics_agent_published_context_example_query_parameter.dart';

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery {
  /// Optional. A natural language question that a user might ask.
  final pulumi.Input<String?>? naturalLanguageQuestion;
  /// Optional. The list of query parameters.
  /// Structure is documented below.
  final pulumi.Input<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter>?>? parameters;
  /// Optional. The SQL query that should be generated to answer
  /// the natural language question.
  final pulumi.Input<String?>? sqlQuery;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery].
  /// [naturalLanguageQuestion] Optional. A natural language question that a user might ask.
  /// [parameters] Optional. The list of query parameters.
  /// [sqlQuery] Optional. The SQL query that should be generated to answer
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery({
    this.naturalLanguageQuestion,
    this.parameters,
    this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'naturalLanguageQuestion': ?naturalLanguageQuestion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlQuery': ?sqlQuery,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery(
      naturalLanguageQuestion: (() { final guardedValue = map['naturalLanguageQuestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter>(guardedValue, (value) => DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQueryParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sqlQuery: (() { final guardedValue = map['sqlQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
