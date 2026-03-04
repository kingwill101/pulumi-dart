// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_policy_condition_condition_sql_boolean_test.dart';
import 'alert_policy_condition_condition_sql_daily.dart';
import 'alert_policy_condition_condition_sql_hourly.dart';
import 'alert_policy_condition_condition_sql_minutes.dart';
import 'alert_policy_condition_condition_sql_row_count_test.dart';

class AlertPolicyConditionConditionSql {
  /// A test that uses an alerting result in a boolean column produced by the SQL query.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlBooleanTest>? booleanTest;

  /// Used to schedule the query to run every so many days.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlDaily>? daily;

  /// Used to schedule the query to run every so many hours.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlHourly>? hourly;

  /// Used to schedule the query to run every so many minutes.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlMinutes>? minutes;

  /// The Log Analytics SQL query to run, as a string.  The query must
  /// conform to the required shape. Specifically, the query must not try to
  /// filter the input by time.  A filter will automatically be applied
  /// to filter the input so that the query receives all rows received
  /// since the last time the query was run.
  final pulumi.Input<String> query;

  /// A test that checks if the number of rows in the result set violates some threshold.
  /// Structure is documented below.
  final pulumi.Input<AlertPolicyConditionConditionSqlRowCountTest>?
  rowCountTest;

  /// Creates a new [AlertPolicyConditionConditionSql].
  /// [booleanTest] A test that uses an alerting result in a boolean column produced by the SQL query.
  /// [daily] Used to schedule the query to run every so many days.
  /// [hourly] Used to schedule the query to run every so many hours.
  /// [minutes] Used to schedule the query to run every so many minutes.
  /// [query] The Log Analytics SQL query to run, as a string.  The query must
  /// [rowCountTest] A test that checks if the number of rows in the result set violates some threshold.
  AlertPolicyConditionConditionSql({
    this.booleanTest,
    this.daily,
    this.hourly,
    this.minutes,
    required this.query,
    this.rowCountTest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanTest':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionSqlBooleanTest,
            Map<String, dynamic>
          >(booleanTest, (value) => value.toMap()),
      'daily':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionSqlDaily,
            Map<String, dynamic>
          >(daily, (value) => value.toMap()),
      'hourly':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionSqlHourly,
            Map<String, dynamic>
          >(hourly, (value) => value.toMap()),
      'minutes':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionSqlMinutes,
            Map<String, dynamic>
          >(minutes, (value) => value.toMap()),
      'query': query,
      'rowCountTest':
          ?pulumi.Input.mapOptionalInputValue<
            AlertPolicyConditionConditionSqlRowCountTest,
            Map<String, dynamic>
          >(rowCountTest, (value) => value.toMap()),
    };
  }

  factory AlertPolicyConditionConditionSql.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSql(
      booleanTest: (() {
        final guardedValue = map['booleanTest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionSqlBooleanTest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      daily: (() {
        final guardedValue = map['daily'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionSqlDaily.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hourly: (() {
        final guardedValue = map['hourly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionSqlHourly.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      minutes: (() {
        final guardedValue = map['minutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionSqlMinutes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      query: pulumi.Input.fromValue(map['query'] as String),
      rowCountTest: (() {
        final guardedValue = map['rowCountTest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AlertPolicyConditionConditionSqlRowCountTest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
