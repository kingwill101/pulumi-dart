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
  GetClusterMaintenancePolicyRecurringWindow({
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
      endTime: (map['endTime'] as String).input(),
      recurrence: (map['recurrence'] as String).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

