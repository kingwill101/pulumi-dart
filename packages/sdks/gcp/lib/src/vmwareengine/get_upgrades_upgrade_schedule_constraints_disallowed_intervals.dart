// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade_schedule_constraints_disallowed_intervals_end_time.dart';
import 'get_upgrades_upgrade_schedule_constraints_disallowed_intervals_start_time.dart';

class GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals {
  final pulumi.Input<String> endDay;
  /// End of the edit window (RFC3339).
  final pulumi.Input<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime> endTime;
  final pulumi.Input<String> startDay;
  /// Start of the edit window (RFC3339).
  final pulumi.Input<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime> startTime;

  /// Creates a new [GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals].
  /// [endDay] Required.
  /// [endTime] End of the edit window (RFC3339).
  /// [startDay] Required.
  /// [startTime] Start of the edit window (RFC3339).
  const GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals({
    required this.endDay,
    required this.endTime,
    required this.startDay,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDay': endDay,
      'endTime': pulumi.Input.mapInputValue<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime, Map<String, dynamic>>(endTime, (value) => value.toMap()),
      'startDay': startDay,
      'startTime': pulumi.Input.mapInputValue<GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleConstraintsDisallowedIntervals(
      endDay: pulumi.Input.fromValue(map['endDay'] as String),
      endTime: pulumi.Input.fromValue(GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsEndTime.fromMap((map['endTime']! as Map).cast<String, dynamic>())),
      startDay: pulumi.Input.fromValue(map['startDay'] as String),
      startTime: pulumi.Input.fromValue(GetUpgradesUpgradeScheduleConstraintsDisallowedIntervalsStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
