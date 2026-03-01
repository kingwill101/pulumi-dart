// ignore_for_file: unused_element, unnecessary_cast


class FlexibleServerMaintenanceWindow {
  /// The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = `0`, Monday = `1`. Defaults to `0`.
  final int? dayOfWeek;
  /// The start hour for maintenance window. Defaults to `0`.
  final int? startHour;
  /// The start minute for maintenance window. Defaults to `0`.
  ///
  /// > **Note:** The specified `maintenance_window` is always defined in UTC time. When unspecified, the maintenance window falls back to the default [system-managed](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/how-to-maintenance-portal#specify-maintenance-schedule-options).
  final int? startMinute;

  /// Creates a new [FlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week for maintenance window, where the week starts on a Sunday, i.e. Sunday = `0`, Monday = `1`. Defaults to `0`.
  /// [startHour] The start hour for maintenance window. Defaults to `0`.
  /// [startMinute] The start minute for maintenance window. Defaults to `0`.
  FlexibleServerMaintenanceWindow({
    this.dayOfWeek,
    this.startHour,
    this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'startHour': ?startHour,
      'startMinute': ?startMinute,
    };
  }

  factory FlexibleServerMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return FlexibleServerMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as int,
      startHour: map['startHour'] == null ? null : map['startHour'] as int,
      startMinute: map['startMinute'] == null ? null : map['startMinute'] as int,
    );
  }
}

