// ignore_for_file: unused_element, unnecessary_cast


class GetServiceStatusGuestConfigurationService {
  /// The behavior of the service when the Arc-enabled machine starts up.
  final String startupType;
  /// The current status of the service.
  final String status;

  /// Creates a new [GetServiceStatusGuestConfigurationService].
  /// [startupType] The behavior of the service when the Arc-enabled machine starts up.
  /// [status] The current status of the service.
  GetServiceStatusGuestConfigurationService({
    required this.startupType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startupType': startupType,
      'status': status,
    };
  }

  factory GetServiceStatusGuestConfigurationService.fromMap(Map<String, dynamic> map) {
    return GetServiceStatusGuestConfigurationService(
      startupType: map['startupType'] as String,
      status: map['status'] as String,
    );
  }
}

