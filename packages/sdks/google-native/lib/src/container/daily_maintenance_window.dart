// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindow {
  /// Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final pulumi.Input<String>? startTime;

  /// Creates a new [DailyMaintenanceWindow].
  /// [startTime] Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  const DailyMaintenanceWindow({
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': ?startTime,
    };
  }

  factory DailyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return DailyMaintenanceWindow(
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
