// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionThresholdTrigger {
  /// The absolute number of time series
  /// that must fail the predicate for the
  /// condition to be triggered.
  final pulumi.Input<int?>? count;
  /// The percentage of time series that
  /// must fail the predicate for the
  /// condition to be triggered.
  final pulumi.Input<double?>? percent;

  /// Creates a new [AlertPolicyConditionConditionThresholdTrigger].
  /// [count] The absolute number of time series
  /// [percent] The percentage of time series that
  const AlertPolicyConditionConditionThresholdTrigger({
    this.count,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'percent': ?percent,
    };
  }

  factory AlertPolicyConditionConditionThresholdTrigger.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionThresholdTrigger(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      percent: (() { final guardedValue = map['percent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
