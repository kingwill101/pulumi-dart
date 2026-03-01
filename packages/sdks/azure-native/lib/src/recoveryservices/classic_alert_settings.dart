// ignore_for_file: unused_element, unnecessary_cast


/// Settings for classic alerts
class ClassicAlertSettings {
  final String? alertsForCriticalOperations;
  final String? emailNotificationsForSiteRecovery;

  /// Creates a new [ClassicAlertSettings].
  /// [alertsForCriticalOperations] Optional.
  /// [emailNotificationsForSiteRecovery] Optional.
  ClassicAlertSettings({
    this.alertsForCriticalOperations,
    this.emailNotificationsForSiteRecovery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForCriticalOperations': ?alertsForCriticalOperations,
      'emailNotificationsForSiteRecovery': ?emailNotificationsForSiteRecovery,
    };
  }

  factory ClassicAlertSettings.fromMap(Map<String, dynamic> map) {
    return ClassicAlertSettings(
      alertsForCriticalOperations: map['alertsForCriticalOperations'] == null ? null : map['alertsForCriticalOperations'] as String,
      emailNotificationsForSiteRecovery: map['emailNotificationsForSiteRecovery'] == null ? null : map['emailNotificationsForSiteRecovery'] as String,
    );
  }
}

