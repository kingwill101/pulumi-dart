// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataQualitySpecRuleSetExpectation {
  /// Expected values for the column value.
  final pulumi.Input<List<String>> values;

  /// Creates a new [DatascanDataQualitySpecRuleSetExpectation].
  /// [values] Expected values for the column value.
  const DatascanDataQualitySpecRuleSetExpectation({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory DatascanDataQualitySpecRuleSetExpectation.fromMap(Map<String, dynamic> map) {
    return DatascanDataQualitySpecRuleSetExpectation(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
