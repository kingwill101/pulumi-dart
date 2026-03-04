// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindowResponseContainerV1beta1 {
  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  final pulumi.Input<String> duration;

  /// Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final pulumi.Input<String> startTime;

  /// Creates a new [DailyMaintenanceWindowResponseContainerV1beta1].
  /// [duration] [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  /// [startTime] Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  DailyMaintenanceWindowResponseContainerV1beta1({
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'duration': duration, 'startTime': startTime};
  }

  factory DailyMaintenanceWindowResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DailyMaintenanceWindowResponseContainerV1beta1(
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
