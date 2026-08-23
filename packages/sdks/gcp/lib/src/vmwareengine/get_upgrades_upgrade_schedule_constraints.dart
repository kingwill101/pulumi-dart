// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade_schedule_constraints_disallowed_intervals.dart';
import 'get_upgrades_upgrade_schedule_constraints_reschedule_date_range.dart';

class GetUpgradesUpgradeScheduleConstraints {
  /// A list of intervals in which maintenance windows are not allowed.
  final pulumi.Input<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals> disallowedIntervals;
  /// Minimum number of hours must be allotted for the upgrade activities for each selected day.
  final pulumi.Input<int> minHoursDay;
  /// The minimum number of weekly hours must be allotted for the upgrade activities.
  final pulumi.Input<int> minHoursWeek;
  /// The user can only reschedule an upgrade that starts within this range.
  final pulumi.Input<GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange> rescheduleDateRange;

  /// Creates a new [GetUpgradesUpgradeScheduleConstraints].
  /// [disallowedIntervals] A list of intervals in which maintenance windows are not allowed.
  /// [minHoursDay] Minimum number of hours must be allotted for the upgrade activities for each selected day.
  /// [minHoursWeek] The minimum number of weekly hours must be allotted for the upgrade activities.
  /// [rescheduleDateRange] The user can only reschedule an upgrade that starts within this range.
  const GetUpgradesUpgradeScheduleConstraints({
    required this.disallowedIntervals,
    required this.minHoursDay,
    required this.minHoursWeek,
    required this.rescheduleDateRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedIntervals': pulumi.Input.mapInputValue<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals, Map<String, dynamic>>(disallowedIntervals, (value) => value.toMap()),
      'minHoursDay': minHoursDay,
      'minHoursWeek': minHoursWeek,
      'rescheduleDateRange': pulumi.Input.mapInputValue<GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange, Map<String, dynamic>>(rescheduleDateRange, (value) => value.toMap()),
    };
  }

  factory GetUpgradesUpgradeScheduleConstraints.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleConstraints(
      disallowedIntervals: pulumi.Input.fromValue(GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals.fromMap((map['disallowedIntervals']! as Map).cast<String, dynamic>())),
      minHoursDay: pulumi.Input.fromValue(map['minHoursDay'] as int),
      minHoursWeek: pulumi.Input.fromValue(map['minHoursWeek'] as int),
      rescheduleDateRange: pulumi.Input.fromValue(GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange.fromMap((map['rescheduleDateRange']! as Map).cast<String, dynamic>())),
    );
  }
}
