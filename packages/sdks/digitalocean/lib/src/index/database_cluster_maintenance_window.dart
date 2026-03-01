// ignore_for_file: unused_element, unnecessary_cast


class DatabaseClusterMaintenanceWindow {
  /// The day of the week on which to apply maintenance updates. May be one of `monday` through `sunday`.
  final String day;
  /// The hour in UTC at which maintenance updates will be applied as a string in 24 hour format, e.g. `13:00`.
  final String hour;

  /// Creates a new [DatabaseClusterMaintenanceWindow].
  /// [day] The day of the week on which to apply maintenance updates. May be one of `monday` through `sunday`.
  /// [hour] The hour in UTC at which maintenance updates will be applied as a string in 24 hour format, e.g. `13:00`.
  DatabaseClusterMaintenanceWindow({
    required this.day,
    required this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'hour': hour,
    };
  }

  factory DatabaseClusterMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return DatabaseClusterMaintenanceWindow(
      day: map['day'] as String,
      hour: map['hour'] as String,
    );
  }
}

