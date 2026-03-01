// ignore_for_file: unused_element, unnecessary_cast


class ClusterMaintenancePolicyDailyMaintenanceWindow {
  final String? duration;
  final String startTime;

  /// Creates a new [ClusterMaintenancePolicyDailyMaintenanceWindow].
  /// [duration] Optional.
  /// [startTime] Required.
  ClusterMaintenancePolicyDailyMaintenanceWindow({
    this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'startTime': startTime,
    };
  }

  factory ClusterMaintenancePolicyDailyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyDailyMaintenanceWindow(
      duration: map['duration'] == null ? null : map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

