// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyRecurringWindow {
  final pulumi.Input<String> endTime;
  final pulumi.Input<String> recurrence;
  final pulumi.Input<String> startTime;

  /// Creates a new [GetClusterMaintenancePolicyRecurringWindow].
  /// [endTime] Required.
  /// [recurrence] Required.
  /// [startTime] Required.
  const GetClusterMaintenancePolicyRecurringWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory GetClusterMaintenancePolicyRecurringWindow.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringWindow(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
