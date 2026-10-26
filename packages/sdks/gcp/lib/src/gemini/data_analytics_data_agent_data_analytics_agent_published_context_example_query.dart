// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery {
  /// Optional. A natural language question that a user might ask.
  final pulumi.Input<String?>? naturalLanguageQuestion;
  /// Optional. The SQL query that should be generated to answer
  /// the natural language question.
  final pulumi.Input<String?>? sqlQuery;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery].
  /// [naturalLanguageQuestion] Optional. A natural language question that a user might ask.
  /// [sqlQuery] Optional. The SQL query that should be generated to answer
  const DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery({
    this.naturalLanguageQuestion,
    this.sqlQuery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'naturalLanguageQuestion': ?naturalLanguageQuestion,
      'sqlQuery': ?sqlQuery,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentPublishedContextExampleQuery(
      naturalLanguageQuestion: (() { final guardedValue = map['naturalLanguageQuestion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlQuery: (() { final guardedValue = map['sqlQuery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
