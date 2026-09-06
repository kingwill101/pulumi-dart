// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettings {
  final pulumi.Input<dynamic>? alertsForAllFailoverIssues;
  final pulumi.Input<dynamic>? alertsForAllJobFailures;
  final pulumi.Input<dynamic>? alertsForAllReplicationIssues;

  /// Creates a new [AzureMonitorAlertSettings].
  /// [alertsForAllFailoverIssues] Optional.
  /// [alertsForAllJobFailures] Optional.
  /// [alertsForAllReplicationIssues] Optional.
  const AzureMonitorAlertSettings({
    this.alertsForAllFailoverIssues,
    this.alertsForAllJobFailures,
    this.alertsForAllReplicationIssues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllFailoverIssues': ?alertsForAllFailoverIssues,
      'alertsForAllJobFailures': ?alertsForAllJobFailures,
      'alertsForAllReplicationIssues': ?alertsForAllReplicationIssues,
    };
  }

  factory AzureMonitorAlertSettings.fromMap(Map<String, dynamic> map) {
    return AzureMonitorAlertSettings(
      alertsForAllFailoverIssues: (() { final guardedValue = map['alertsForAllFailoverIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      alertsForAllJobFailures: (() { final guardedValue = map['alertsForAllJobFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      alertsForAllReplicationIssues: (() { final guardedValue = map['alertsForAllReplicationIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
