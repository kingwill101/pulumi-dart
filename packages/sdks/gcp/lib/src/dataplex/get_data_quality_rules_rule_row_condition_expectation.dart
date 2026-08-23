// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataQualityRulesRuleRowConditionExpectation {
  /// The SQL expression.
  final pulumi.Input<String> sqlExpression;

  /// Creates a new [GetDataQualityRulesRuleRowConditionExpectation].
  /// [sqlExpression] The SQL expression.
  const GetDataQualityRulesRuleRowConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory GetDataQualityRulesRuleRowConditionExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleRowConditionExpectation(
      sqlExpression: pulumi.Input.fromValue(map['sqlExpression'] as String),
    );
  }
}
