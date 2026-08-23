// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUpgradesUpgradeScheduleEditWindow {
  /// End of the edit window (RFC3339).
  final pulumi.Input<String> endTime;
  /// Start of the edit window (RFC3339).
  final pulumi.Input<String> startTime;

  /// Creates a new [GetUpgradesUpgradeScheduleEditWindow].
  /// [endTime] End of the edit window (RFC3339).
  /// [startTime] Start of the edit window (RFC3339).
  const GetUpgradesUpgradeScheduleEditWindow({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetUpgradesUpgradeScheduleEditWindow.fromMap(Map<String, dynamic> map) {
    return GetUpgradesUpgradeScheduleEditWindow(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
