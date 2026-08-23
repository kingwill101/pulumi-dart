// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade_schedule_weekly_window_start_time.dart';

class GetUpgradesUpgradeScheduleWeeklyWindow {
  /// Day of the week for this window.
  final pulumi.Input<String> dayOfWeek;
  /// The duration of the window in seconds.
  final pulumi.Input<String> duration;
  /// Start of the edit window (RFC3339).
  final pulumi.Input<List<GetUpgradesUpgradeScheduleWeeklyWindowStartTime>> startTimes;

  /// Creates a new [GetUpgradesUpgradeScheduleWeeklyWindow].
  /// [dayOfWeek] Day of the week for this window.
  /// [duration] The duration of the window in seconds.
  /// [startTimes] Start of the edit window (RFC3339).
  const GetUpgradesUpgradeScheduleWeeklyWindow({
    required this.dayOfWeek,
    required this.duration,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'duration': duration,
      'startTimes': pulumi.Input.mapInputValue<List<GetUpgradesUpgradeScheduleWeeklyWindowStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetUpgradesUpgradeScheduleWeeklyWindowStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUpgradesUpgradeScheduleWeeklyWindow.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleWeeklyWindow(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUpgradesUpgradeScheduleWeeklyWindowStartTime>(map['startTimes']!, (value) => GetUpgradesUpgradeScheduleWeeklyWindowStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
