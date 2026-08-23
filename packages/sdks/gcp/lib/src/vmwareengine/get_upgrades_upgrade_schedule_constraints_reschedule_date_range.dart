// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange {
  /// End of the edit window (RFC3339).
  final pulumi.Input<String> endTime;
  /// Start of the edit window (RFC3339).
  final pulumi.Input<String> startTime;

  /// Creates a new [GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange].
  /// [endTime] End of the edit window (RFC3339).
  /// [startTime] Start of the edit window (RFC3339).
  const GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleConstraintsRescheduleDateRange(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
