// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetThresholdRule {
  /// The type of basis used to determine if spend has passed
  /// the threshold.
  /// Default value is `CURRENT_SPEND`.
  /// Possible values are: `CURRENT_SPEND`, `FORECASTED_SPEND`.
  final pulumi.Input<String>? spendBasis;
  /// Send an alert when this threshold is exceeded. This is a
  /// 1.0-based percentage, so 0.5 = 50%. Must be &gt;= 0.
  final pulumi.Input<double> thresholdPercent;

  /// Creates a new [BudgetThresholdRule].
  /// [spendBasis] The type of basis used to determine if spend has passed
  /// [thresholdPercent] Send an alert when this threshold is exceeded. This is a
  const BudgetThresholdRule({
    this.spendBasis,
    required this.thresholdPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spendBasis': ?spendBasis,
      'thresholdPercent': thresholdPercent,
    };
  }

  factory BudgetThresholdRule.fromMap(Map<String, dynamic> map) {
    return BudgetThresholdRule(
      spendBasis: (() { final guardedValue = map['spendBasis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thresholdPercent: pulumi.Input.fromValue(map['thresholdPercent'] as double),
    );
  }
}

