// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlRowCountTest {
  /// The comparison to apply between the time
  /// series (indicated by filter and aggregation)
  /// and the threshold (indicated by
  /// threshold_value). The comparison is applied
  /// on each time series, with the time series on
  /// the left-hand side and the threshold on the
  /// right-hand side. Only COMPARISON_LT and
  /// COMPARISON_GT are supported currently.
  /// Possible values are: `COMPARISON_GT`, `COMPARISON_GE`, `COMPARISON_LT`, `COMPARISON_LE`, `COMPARISON_EQ`, `COMPARISON_NE`.
  final pulumi.Input<String> comparison;

  /// The value against which to compare the row count.
  final pulumi.Input<int> threshold;

  /// Creates a new [AlertPolicyConditionConditionSqlRowCountTest].
  /// [comparison] The comparison to apply between the time
  /// [threshold] The value against which to compare the row count.
  AlertPolicyConditionConditionSqlRowCountTest({
    required this.comparison,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'threshold': threshold};
  }

  factory AlertPolicyConditionConditionSqlRowCountTest.fromMap(
    Map<String, dynamic> map,
  ) {
    return AlertPolicyConditionConditionSqlRowCountTest(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      threshold: pulumi.Input.fromValue(map['threshold'] as int),
    );
  }
}
