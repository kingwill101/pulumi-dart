// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KubernetesClusterMaintenancePolicy {
  /// The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day.
  final pulumi.Input<String>? day;

  /// A string denoting the duration of the service window, e.g., "04:00".
  final pulumi.Input<String>? duration;

  /// The start time in UTC of the maintenance window policy in 24-hour clock format / HH:MM notation (e.g., 15:00).
  final pulumi.Input<String>? startTime;

  /// Creates a new [KubernetesClusterMaintenancePolicy].
  /// [day] The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day.
  /// [duration] A string denoting the duration of the service window, e.g., "04:00".
  /// [startTime] The start time in UTC of the maintenance window policy in 24-hour clock format / HH:MM notation (e.g., 15:00).
  KubernetesClusterMaintenancePolicy({this.day, this.duration, this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': ?day,
      'duration': ?duration,
      'startTime': ?startTime,
    };
  }

  factory KubernetesClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterMaintenancePolicy(
      day: (() {
        final guardedValue = map['day'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      duration: (() {
        final guardedValue = map['duration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
