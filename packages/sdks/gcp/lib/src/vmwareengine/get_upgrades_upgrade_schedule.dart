// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_upgrades_upgrade_schedule_constraints.dart';
import 'get_upgrades_upgrade_schedule_edit_window.dart';
import 'get_upgrades_upgrade_schedule_weekly_window.dart';

class GetUpgradesUpgradeSchedule {
  /// Constraints applied to the schedule.
  final pulumi.Input<GetUpgradesUpgradeScheduleConstraints> constraints;
  /// The schedule is open for edits during this time interval.
  final pulumi.Input<List<GetUpgradesUpgradeScheduleEditWindow>> editWindows;
  /// Indicates who most recently edited the upgrade schedule. Possible values: `SYSTEM`, `USER`.
  final pulumi.Input<String> lastEditor;
  /// Start of the edit window (RFC3339).
  final pulumi.Input<String> startTime;
  /// Weekly time windows for upgrade activities.
  final pulumi.Input<List<GetUpgradesUpgradeScheduleWeeklyWindow>> weeklyWindows;

  /// Creates a new [GetUpgradesUpgradeSchedule].
  /// [constraints] Constraints applied to the schedule.
  /// [editWindows] The schedule is open for edits during this time interval.
  /// [lastEditor] Indicates who most recently edited the upgrade schedule. Possible values: `SYSTEM`, `USER`.
  /// [startTime] Start of the edit window (RFC3339).
  /// [weeklyWindows] Weekly time windows for upgrade activities.
  const GetUpgradesUpgradeSchedule({
    required this.constraints,
    required this.editWindows,
    required this.lastEditor,
    required this.startTime,
    required this.weeklyWindows,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<GetUpgradesUpgradeScheduleConstraints, Map<String, dynamic>>(constraints, (value) => value.toMap()),
      'editWindows': pulumi.Input.mapInputValue<List<GetUpgradesUpgradeScheduleEditWindow>, List<Map<String, dynamic>>>(editWindows, (value) => pulumi.Input.encodeList<GetUpgradesUpgradeScheduleEditWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastEditor': lastEditor,
      'startTime': startTime,
      'weeklyWindows': pulumi.Input.mapInputValue<List<GetUpgradesUpgradeScheduleWeeklyWindow>, List<Map<String, dynamic>>>(weeklyWindows, (value) => pulumi.Input.encodeList<GetUpgradesUpgradeScheduleWeeklyWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUpgradesUpgradeSchedule.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeSchedule(
      constraints: pulumi.Input.fromValue(GetUpgradesUpgradeScheduleConstraints.fromMap((map['constraints']! as Map).cast<String, dynamic>())),
      editWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUpgradesUpgradeScheduleEditWindow>(map['editWindows']!, (value) => GetUpgradesUpgradeScheduleEditWindow.fromMap((value as Map).cast<String, dynamic>()))),
      lastEditor: pulumi.Input.fromValue(map['lastEditor'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      weeklyWindows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUpgradesUpgradeScheduleWeeklyWindow>(map['weeklyWindows']!, (value) => GetUpgradesUpgradeScheduleWeeklyWindow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
