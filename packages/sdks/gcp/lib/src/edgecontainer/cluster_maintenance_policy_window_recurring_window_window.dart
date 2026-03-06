// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyWindowRecurringWindowWindow {
  /// The time that the window ends. The end time must take place after the
  /// start time.
  final pulumi.Input<String>? endTime;
  /// The time that the window first starts.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ClusterMaintenancePolicyWindowRecurringWindowWindow].
  /// [endTime] The time that the window ends. The end time must take place after the
  /// [startTime] The time that the window first starts.
  const ClusterMaintenancePolicyWindowRecurringWindowWindow({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory ClusterMaintenancePolicyWindowRecurringWindowWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyWindowRecurringWindowWindow(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

