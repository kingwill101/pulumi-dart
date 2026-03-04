// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for classic alerts
class ClassicAlertSettings {
  final pulumi.Input<String>? alertsForCriticalOperations;
  final pulumi.Input<String>? emailNotificationsForSiteRecovery;

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
      alertsForCriticalOperations: (() {
        final guardedValue = map['alertsForCriticalOperations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      emailNotificationsForSiteRecovery: (() {
        final guardedValue = map['emailNotificationsForSiteRecovery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
