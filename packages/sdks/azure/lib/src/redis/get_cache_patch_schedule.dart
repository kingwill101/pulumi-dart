// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCachePatchSchedule {
  /// the Weekday name for the patch item
  final pulumi.Input<String> dayOfWeek;
  /// The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated.
  final pulumi.Input<String> maintenanceWindow;
  /// The Start Hour for maintenance in UTC
  final pulumi.Input<int> startHourUtc;

  /// Creates a new [GetCachePatchSchedule].
  /// [dayOfWeek] the Weekday name for the patch item
  /// [maintenanceWindow] The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated.
  /// [startHourUtc] The Start Hour for maintenance in UTC
  GetCachePatchSchedule({
    required this.dayOfWeek,
    required this.maintenanceWindow,
    required this.startHourUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'maintenanceWindow': maintenanceWindow,
      'startHourUtc': startHourUtc,
    };
  }

  factory GetCachePatchSchedule.fromMap(Map<String, dynamic> map) {
    return GetCachePatchSchedule(
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      maintenanceWindow: (map['maintenanceWindow'] as String).input(),
      startHourUtc: (map['startHourUtc'] as int).input(),
    );
  }
}

