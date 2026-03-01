// ignore_for_file: unused_element, unnecessary_cast


class GetFlexibleServerMaintenanceWindow {
  /// The day of week of the maintenance window.
  final int dayOfWeek;
  /// The start hour of the maintenance window.
  final int startHour;
  /// The start minute of the maintenance window.
  final int startMinute;

  /// Creates a new [GetFlexibleServerMaintenanceWindow].
  /// [dayOfWeek] The day of week of the maintenance window.
  /// [startHour] The start hour of the maintenance window.
  /// [startMinute] The start minute of the maintenance window.
  GetFlexibleServerMaintenanceWindow({
    required this.dayOfWeek,
    required this.startHour,
    required this.startMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startHour': startHour,
      'startMinute': startMinute,
    };
  }

  factory GetFlexibleServerMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetFlexibleServerMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as int,
      startHour: map['startHour'] as int,
      startMinute: map['startMinute'] as int,
    );
  }
}

