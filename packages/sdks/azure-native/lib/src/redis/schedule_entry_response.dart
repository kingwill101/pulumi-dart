// ignore_for_file: unused_element, unnecessary_cast


/// Patch schedule entry for a Premium Redis Cache.
class ScheduleEntryResponse {
  /// Day of the week when a cache can be patched.
  final String dayOfWeek;
  /// ISO8601 timespan specifying how much time cache patching can take.
  final String? maintenanceWindow;
  /// Start hour after which cache patching can start.
  final int startHourUtc;

  /// Creates a new [ScheduleEntryResponse].
  /// [dayOfWeek] Day of the week when a cache can be patched.
  /// [maintenanceWindow] ISO8601 timespan specifying how much time cache patching can take.
  /// [startHourUtc] Start hour after which cache patching can start.
  ScheduleEntryResponse({
    required this.dayOfWeek,
    this.maintenanceWindow,
    required this.startHourUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'maintenanceWindow': ?maintenanceWindow,
      'startHourUtc': startHourUtc,
    };
  }

  factory ScheduleEntryResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleEntryResponse(
      dayOfWeek: map['dayOfWeek'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : map['maintenanceWindow'] as String,
      startHourUtc: map['startHourUtc'] as int,
    );
  }
}

