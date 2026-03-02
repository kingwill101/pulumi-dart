// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for classic alerts
class ClassicAlertSettingsResponse {
  final pulumi.Input<String>? alertsForCriticalOperations;
  final pulumi.Input<String>? emailNotificationsForSiteRecovery;

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
      alertsForCriticalOperations: map['alertsForCriticalOperations'] == null ? null : (map['alertsForCriticalOperations'] as String).input(),
      emailNotificationsForSiteRecovery: map['emailNotificationsForSiteRecovery'] == null ? null : (map['emailNotificationsForSiteRecovery'] as String).input(),
    );
  }
}

