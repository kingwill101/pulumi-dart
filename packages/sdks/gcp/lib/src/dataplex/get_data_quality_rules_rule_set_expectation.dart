// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataQualityRulesRuleSetExpectation {
  /// Expected values for the column value.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetDataQualityRulesRuleSetExpectation].
  /// [values] Expected values for the column value.
  const GetDataQualityRulesRuleSetExpectation({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GetDataQualityRulesRuleSetExpectation.fromMap(Map<String, dynamic> map) {
    return GetDataQualityRulesRuleSetExpectation(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
