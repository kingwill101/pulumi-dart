// ignore_for_file: unused_element, unnecessary_cast


/// Published upcoming future maintenance schedule.
class MaintenanceScheduleResponse {
  /// The scheduled end time for the maintenance.
  final String endTime;
  /// The scheduled start time for the maintenance.
  final String startTime;

  /// Creates a new [MaintenanceScheduleResponse].
  /// [endTime] The scheduled end time for the maintenance.
  /// [startTime] The scheduled start time for the maintenance.
  MaintenanceScheduleResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory MaintenanceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

