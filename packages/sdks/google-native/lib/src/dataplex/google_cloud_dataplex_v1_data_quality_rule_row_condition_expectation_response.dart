// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each row passes the specified condition.The SQL expression needs to use BigQuery standard SQL syntax and should produce a boolean value per row as the result.Example: col1 &gt;= 0 AND col2 &lt; 10
class GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse {
  /// Optional. The SQL expression.
  final pulumi.Input<String> sqlExpression;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse].
  /// [sqlExpression] Optional. The SQL expression.
  const GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleRowConditionExpectationResponse(
      sqlExpression: pulumi.Input.fromValue(map['sqlExpression'] as String),
    );
  }
}
