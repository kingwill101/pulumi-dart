// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TriggerScheduleScheduleMonthly {
  /// The occurrence of the specified day during the month. For example, a `monthly` property with `weekday` and `week` values of `Sunday, -1` means the last Sunday of the month.
  final pulumi.Input<int>? week;

  /// The day of the week on which the trigger runs. For example, a `monthly` property with a `weekday` value of `Sunday` means every Sunday of the month.
  final pulumi.Input<String> weekday;

  /// Creates a new [TriggerScheduleScheduleMonthly].
  /// [week] The occurrence of the specified day during the month. For example, a `monthly` property with `weekday` and `week` values of `Sunday, -1` means the last Sunday of the month.
  /// [weekday] The day of the week on which the trigger runs. For example, a `monthly` property with a `weekday` value of `Sunday` means every Sunday of the month.
  TriggerScheduleScheduleMonthly({this.week, required this.weekday});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'week': ?week, 'weekday': weekday};
  }

  factory TriggerScheduleScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return TriggerScheduleScheduleMonthly(
      week: (() {
        final guardedValue = map['week'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      weekday: pulumi.Input.fromValue(map['weekday'] as String),
    );
  }
}
