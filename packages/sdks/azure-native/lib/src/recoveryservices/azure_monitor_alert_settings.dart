// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for Azure Monitor based alerts
class AzureMonitorAlertSettings {
  final pulumi.Input<String>? alertsForAllFailoverIssues;
  final pulumi.Input<String>? alertsForAllJobFailures;
  final pulumi.Input<String>? alertsForAllReplicationIssues;

  /// Creates a new [AzureMonitorAlertSettings].
  /// [alertsForAllFailoverIssues] Optional.
  /// [alertsForAllJobFailures] Optional.
  /// [alertsForAllReplicationIssues] Optional.
  AzureMonitorAlertSettings({
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
      alertsForAllFailoverIssues: (() { final guardedValue = map['alertsForAllFailoverIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertsForAllJobFailures: (() { final guardedValue = map['alertsForAllJobFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertsForAllReplicationIssues: (() { final guardedValue = map['alertsForAllReplicationIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

