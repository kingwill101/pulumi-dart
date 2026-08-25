// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_deployment_recurring_schedule_monthly_week_day_of_month.dart';

class PatchDeploymentRecurringScheduleMonthly {
  /// One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
  /// Months without the target day will be skipped. For example, a schedule to run "every month on the 31st"
  /// will not run in February, April, June, etc.
  final pulumi.Input<int?>? monthDay;
  /// Week day in a month.
  /// Structure is documented below.
  final pulumi.Input<PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth?>? weekDayOfMonth;

  /// Creates a new [PatchDeploymentRecurringScheduleMonthly].
  /// [monthDay] One day of the month. 1-31 indicates the 1st to the 31st day. -1 indicates the last day of the month.
  /// [weekDayOfMonth] Week day in a month.
  const PatchDeploymentRecurringScheduleMonthly({
    this.monthDay,
    this.weekDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'monthDay': ?monthDay,
      'weekDayOfMonth': ?pulumi.Input.mapOptionalInputValue<PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth, Map<String, dynamic>>(weekDayOfMonth, (value) => value.toMap()),
    };
  }

  factory PatchDeploymentRecurringScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentRecurringScheduleMonthly(
      monthDay: (() { final guardedValue = map['monthDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      weekDayOfMonth: (() { final guardedValue = map['weekDayOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PatchDeploymentRecurringScheduleMonthlyWeekDayOfMonth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
