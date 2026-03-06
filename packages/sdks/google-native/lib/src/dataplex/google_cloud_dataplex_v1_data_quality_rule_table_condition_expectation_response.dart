// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether the provided expression is true.The SQL expression needs to use BigQuery standard SQL syntax and should produce a scalar boolean result.Example: MIN(col1) &gt;= 0
class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse {
  /// Optional. The SQL expression.
  final pulumi.Input<String> sqlExpression;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse].
  /// [sqlExpression] Optional. The SQL expression.
  const GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleTableConditionExpectationResponse(
      sqlExpression: pulumi.Input.fromValue(map['sqlExpression'] as String),
    );
  }
}

