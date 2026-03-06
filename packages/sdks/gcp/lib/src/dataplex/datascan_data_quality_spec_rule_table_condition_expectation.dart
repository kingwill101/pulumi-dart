// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleTableConditionExpectation {
  /// The SQL expression.
  final pulumi.Input<String> sqlExpression;

  /// Creates a new [DatascanDataQualitySpecRuleTableConditionExpectation].
  /// [sqlExpression] The SQL expression.
  const DatascanDataQualitySpecRuleTableConditionExpectation({
    required this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sqlExpression': sqlExpression,
    };
  }

  factory DatascanDataQualitySpecRuleTableConditionExpectation.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleTableConditionExpectation(
      sqlExpression: pulumi.Input.fromValue(map['sqlExpression'] as String),
    );
  }
}

