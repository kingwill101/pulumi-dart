// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CachePatchSchedule {
  /// the Weekday name - possible values include `Monday`, `Tuesday`, `Wednesday` etc.
  final pulumi.Input<String> dayOfWeek;
  /// The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated. Defaults to `PT5H`.
  final pulumi.Input<String>? maintenanceWindow;
  /// the Start Hour for maintenance in UTC - possible values range from `0 - 23`.
  ///
  /// > **Note:** The Patch Window lasts for `5` hours from the `start_hour_utc`.
  final pulumi.Input<int>? startHourUtc;

  /// Creates a new [CachePatchSchedule].
  /// [dayOfWeek] the Weekday name - possible values include `Monday`, `Tuesday`, `Wednesday` etc.
  /// [maintenanceWindow] The ISO 8601 timespan which specifies the amount of time the Redis Cache can be updated. Defaults to `PT5H`.
  /// [startHourUtc] the Start Hour for maintenance in UTC - possible values range from `0 - 23`.
  CachePatchSchedule({
    required this.dayOfWeek,
    this.maintenanceWindow,
    this.startHourUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'maintenanceWindow': ?maintenanceWindow,
      'startHourUtc': ?startHourUtc,
    };
  }

  factory CachePatchSchedule.fromMap(Map<String, dynamic> map) {
    return CachePatchSchedule(
      dayOfWeek: (map['dayOfWeek'] as String).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : (map['maintenanceWindow'] as String).input(),
      startHourUtc: map['startHourUtc'] == null ? null : (map['startHourUtc'] as int).input(),
    );
  }
}

