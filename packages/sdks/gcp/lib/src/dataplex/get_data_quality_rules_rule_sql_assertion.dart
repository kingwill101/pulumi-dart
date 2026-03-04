// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataQualityRulesRuleSqlAssertion {
  /// The SQL expression.
  final pulumi.Input<String> sqlStatement;

  /// Creates a new [GetDataQualityRulesRuleSqlAssertion].
  /// [sqlStatement] The SQL expression.
  GetDataQualityRulesRuleSqlAssertion({required this.sqlStatement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sqlStatement': sqlStatement};
  }

  factory GetDataQualityRulesRuleSqlAssertion.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDataQualityRulesRuleSqlAssertion(
      sqlStatement: pulumi.Input.fromValue(map['sqlStatement'] as String),
    );
  }
}
