// ignore_for_file: unused_element, unnecessary_cast


/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindowContainerV1beta1 {
  /// Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final String? startTime;

  /// Creates a new [DailyMaintenanceWindowContainerV1beta1].
  /// [startTime] Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  DailyMaintenanceWindowContainerV1beta1({
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTime': ?startTime,
    };
  }

  factory DailyMaintenanceWindowContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return DailyMaintenanceWindowContainerV1beta1(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

