// ignore_for_file: unused_element, unnecessary_cast


/// Represents a window of time using two timestamps: `earliest` and `latest`.
class UpcomingMaintenanceTimeWindowResponse {
  final String earliest;
  final String latest;

  /// Creates a new [UpcomingMaintenanceTimeWindowResponse].
  /// [earliest] Required.
  /// [latest] Required.
  UpcomingMaintenanceTimeWindowResponse({
    required this.earliest,
    required this.latest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliest': earliest,
      'latest': latest,
    };
  }

  factory UpcomingMaintenanceTimeWindowResponse.fromMap(Map<String, dynamic> map) {
    return UpcomingMaintenanceTimeWindowResponse(
      earliest: map['earliest'] as String,
      latest: map['latest'] as String,
    );
  }
}

