// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataQualityRulesRuleTableConditionExpectation {
  /// The SQL expression.
  final pulumi.Input<String> sqlExpression;

  /// Creates a new [GetDataQualityRulesRuleTableConditionExpectation].
  /// [sqlExpression] The SQL expression.
  const GetDataQualityRulesRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory GetDataQualityRulesRuleTableConditionExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleTableConditionExpectation(
      sqlExpression: pulumi.Input.fromValue(map['sqlExpression'] as String),
    );
  }
}

