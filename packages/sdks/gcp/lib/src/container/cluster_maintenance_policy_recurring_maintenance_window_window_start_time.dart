// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime {
  /// The hour of the day (integer value between 0 and 23).
  final pulumi.Input<int> hours;
  /// The minute of the hour (integer value between 0 and 59).
  final pulumi.Input<int> minutes;
  /// The second of the minute (integer value between 0 and 59).
  final pulumi.Input<int> seconds;

  /// Creates a new [ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime].
  /// [hours] The hour of the day (integer value between 0 and 23).
  /// [minutes] The minute of the hour (integer value between 0 and 59).
  /// [seconds] The second of the minute (integer value between 0 and 59).
  const ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime({
    required this.hours,
    required this.minutes,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'seconds': seconds,
    };
  }

  factory ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
    );
  }
}
