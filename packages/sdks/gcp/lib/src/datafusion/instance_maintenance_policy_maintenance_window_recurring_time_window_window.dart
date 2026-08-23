// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow {
  /// The end time of the time window provided in RFC 3339 format.
  final pulumi.Input<String> endTime;
  /// The start time of the time window provided in RFC 3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow].
  /// [endTime] The end time of the time window provided in RFC 3339 format.
  /// [startTime] The start time of the time window provided in RFC 3339 format.
  const InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
