// ignore_for_file: unused_element, unnecessary_cast


/// Settings for classic alerts
class ClassicAlertSettingsResponse {
  final String? alertsForCriticalOperations;
  final String? emailNotificationsForSiteRecovery;

  /// Creates a new [ClassicAlertSettingsResponse].
  /// [alertsForCriticalOperations] Optional.
  /// [emailNotificationsForSiteRecovery] Optional.
  ClassicAlertSettingsResponse({
    this.alertsForCriticalOperations,
    this.emailNotificationsForSiteRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForCriticalOperations': ?alertsForCriticalOperations,
      'emailNotificationsForSiteRecovery': ?emailNotificationsForSiteRecovery,
    };
  }

  factory ClassicAlertSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClassicAlertSettingsResponse(
      alertsForCriticalOperations: map['alertsForCriticalOperations'] == null ? null : map['alertsForCriticalOperations'] as String,
      emailNotificationsForSiteRecovery: map['emailNotificationsForSiteRecovery'] == null ? null : map['emailNotificationsForSiteRecovery'] as String,
    );
  }
}

