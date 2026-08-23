// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlHourly {
  /// The number of minutes after the hour (in UTC) to run the query.
  /// Must be greater than or equal to 0 minutes and less than or equal to
  /// 59 minutes.  If left unspecified, then an arbitrary offset is used.
  final pulumi.Input<int>? minuteOffset;
  /// Number of hours between runs. The interval must be greater than or
  /// equal to 1 hour and less than or equal to 48 hours.
  final pulumi.Input<int> periodicity;

  /// Creates a new [AlertPolicyConditionConditionSqlHourly].
  /// [minuteOffset] The number of minutes after the hour (in UTC) to run the query.
  /// [periodicity] Number of hours between runs. The interval must be greater than or
  const AlertPolicyConditionConditionSqlHourly({
    this.minuteOffset,
    required this.periodicity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minuteOffset': ?minuteOffset,
      'periodicity': periodicity,
    };
  }

  factory AlertPolicyConditionConditionSqlHourly.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlHourly(
      minuteOffset: (() { final guardedValue = map['minuteOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodicity: pulumi.Input.fromValue(map['periodicity'] as int),
    );
  }
}
