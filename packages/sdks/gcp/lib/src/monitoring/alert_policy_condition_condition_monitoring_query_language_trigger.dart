// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionMonitoringQueryLanguageTrigger {
  /// The absolute number of time series
  /// that must fail the predicate for the
  /// condition to be triggered.
  final pulumi.Input<int>? count;
  /// The percentage of time series that
  /// must fail the predicate for the
  /// condition to be triggered.
  final pulumi.Input<double>? percent;

  /// Creates a new [AlertPolicyConditionConditionMonitoringQueryLanguageTrigger].
  /// [count] The absolute number of time series
  /// [percent] The percentage of time series that
  AlertPolicyConditionConditionMonitoringQueryLanguageTrigger({
    this.count,
    this.percent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'percent': ?percent,
    };
  }

  factory AlertPolicyConditionConditionMonitoringQueryLanguageTrigger.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionMonitoringQueryLanguageTrigger(
      count: map['count'] == null ? null : (map['count']! as int).input(),
      percent: map['percent'] == null ? null : (map['percent']! as double).input(),
    );
  }
}

