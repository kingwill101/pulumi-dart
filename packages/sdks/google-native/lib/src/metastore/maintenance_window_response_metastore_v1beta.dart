// ignore_for_file: unused_element, unnecessary_cast


/// Maintenance window. This specifies when Dataproc Metastore may perform system maintenance operation to the service.
class MaintenanceWindowResponseMetastoreV1beta {
  /// The day of week, when the window starts.
  final String dayOfWeek;
  /// The hour of day (0-23) when the window starts.
  final int hourOfDay;

  /// Creates a new [MaintenanceWindowResponseMetastoreV1beta].
  /// [dayOfWeek] The day of week, when the window starts.
  /// [hourOfDay] The hour of day (0-23) when the window starts.
  MaintenanceWindowResponseMetastoreV1beta({
    required this.dayOfWeek,
    required this.hourOfDay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'hourOfDay': hourOfDay,
    };
  }

  factory MaintenanceWindowResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponseMetastoreV1beta(
      dayOfWeek: map['dayOfWeek'] as String,
      hourOfDay: map['hourOfDay'] as int,
    );
  }
}

