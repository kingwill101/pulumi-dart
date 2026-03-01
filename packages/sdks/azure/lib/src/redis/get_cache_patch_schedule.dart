// ignore_for_file: unused_element, unnecessary_cast


class GetCachePatchSchedule {
  /// the Weekday name for the patch item
  final String dayOfWeek;
  /// The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated.
  final String maintenanceWindow;
  /// The Start Hour for maintenance in UTC
  final int startHourUtc;

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
      dayOfWeek: map['dayOfWeek'] as String,
      maintenanceWindow: map['maintenanceWindow'] as String,
      startHourUtc: map['startHourUtc'] as int,
    );
  }
}

