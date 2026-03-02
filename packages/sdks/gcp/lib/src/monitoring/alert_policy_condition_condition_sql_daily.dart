// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_sql_daily_execution_time.dart';

class AlertPolicyConditionConditionSqlDaily {
  /// The time of day (in UTC) at which the query should run. If left
  /// unspecified, the server picks an arbitrary time of day and runs
  /// the query at the same time each day.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlDailyExecutionTime>? executionTime;
  /// The number of days between runs. Must be greater than or equal
  /// to 1 day and less than or equal to 30 days.
  final pulumi.Input<int> periodicity;

  /// Creates a new [AlertPolicyConditionConditionSqlDaily].
  /// [executionTime] The time of day (in UTC) at which the query should run. If left
  /// [periodicity] The number of days between runs. Must be greater than or equal
  AlertPolicyConditionConditionSqlDaily({
    this.executionTime,
    required this.periodicity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTime': ?pulumi.Input.mapOptionalInputValue<AlertPolicyConditionConditionSqlDailyExecutionTime, Map<String, dynamic>>(executionTime, (value) => value.toMap()),
      'periodicity': periodicity,
    };
  }

  factory AlertPolicyConditionConditionSqlDaily.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlDaily(
      executionTime: map['executionTime'] == null ? null : (AlertPolicyConditionConditionSqlDailyExecutionTime.fromMap((map['executionTime'] as Map).cast<String, dynamic>())).input(),
      periodicity: (map['periodicity'] as int).input(),
    );
  }
}

