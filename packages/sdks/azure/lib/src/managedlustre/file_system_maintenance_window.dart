// ignore_for_file: unused_element, unnecessary_cast


class FileSystemMaintenanceWindow {
  /// The day of the week on which the maintenance window will occur. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  final String dayOfWeek;
  /// The time of day (in UTC) to start the maintenance window.
  final String timeOfDayInUtc;

  /// Creates a new [FileSystemMaintenanceWindow].
  /// [dayOfWeek] The day of the week on which the maintenance window will occur. Possible values are `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday` and `Saturday`.
  /// [timeOfDayInUtc] The time of day (in UTC) to start the maintenance window.
  FileSystemMaintenanceWindow({
    required this.dayOfWeek,
    required this.timeOfDayInUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'timeOfDayInUtc': timeOfDayInUtc,
    };
  }

  factory FileSystemMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return FileSystemMaintenanceWindow(
      dayOfWeek: map['dayOfWeek'] as String,
      timeOfDayInUtc: map['timeOfDayInUtc'] as String,
    );
  }
}

