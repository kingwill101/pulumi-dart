// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime {
  final pulumi.Input<int> hours;
  final pulumi.Input<int> minutes;
  final pulumi.Input<int> seconds;

  /// Creates a new [GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime].
  /// [hours] Required.
  /// [minutes] Required.
  /// [seconds] Required.
  const GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime({
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

  factory GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime(
      hours: pulumi.Input.fromValue((map['hours'] as num).toInt()),
      minutes: pulumi.Input.fromValue((map['minutes'] as num).toInt()),
      seconds: pulumi.Input.fromValue((map['seconds'] as num).toInt()),
    );
  }
}
