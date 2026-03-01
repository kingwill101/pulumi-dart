// ignore_for_file: unused_element, unnecessary_cast


class ClusterMaintenancePolicyRecurringWindow {
  final String endTime;
  final String recurrence;
  final String startTime;

  /// Creates a new [ClusterMaintenancePolicyRecurringWindow].
  /// [endTime] Required.
  /// [recurrence] Required.
  /// [startTime] Required.
  ClusterMaintenancePolicyRecurringWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory ClusterMaintenancePolicyRecurringWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringWindow(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

