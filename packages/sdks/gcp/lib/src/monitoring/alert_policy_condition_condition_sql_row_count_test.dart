// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlRowCountTest {
  /// The comparison to apply between the time series
  /// (indicated by filter and aggregation) and the
  /// threshold (indicated by threshold_value). The
  /// comparison is applied on each time series, with
  /// the time series on the left-hand side and the
  /// threshold on the right-hand side.
  /// The Cloud Monitoring API only supports
  /// `COMPARISON_LT` and `COMPARISON_GT` for SQL
  /// row-count thresholds; the other values are kept
  /// in the schema for backward compatibility with
  /// imported state but will be rejected by the API.
  /// See
  /// https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.alertPolicies#MetricThreshold.
  /// Possible values are: `COMPARISON_GT`, `COMPARISON_GE`, `COMPARISON_LT`, `COMPARISON_LE`, `COMPARISON_EQ`, `COMPARISON_NE`.
  final pulumi.Input<String> comparison;
  /// The value against which to compare the row count.
  final pulumi.Input<int> threshold;

  /// Creates a new [AlertPolicyConditionConditionSqlRowCountTest].
  /// [comparison] The comparison to apply between the time series
  /// [threshold] The value against which to compare the row count.
  const AlertPolicyConditionConditionSqlRowCountTest({
    required this.comparison,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'threshold': threshold,
    };
  }

  factory AlertPolicyConditionConditionSqlRowCountTest.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlRowCountTest(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      threshold: pulumi.Input.fromValue((map['threshold'] as num).toInt()),
    );
  }
}
