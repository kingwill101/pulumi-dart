// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VaultMonitoring {
  /// Enabling/Disabling built-in Azure Monitor alerts for all failover issues. Defaults to `true`.
  final pulumi.Input<bool?>? alertsForAllFailoverIssuesEnabled;
  /// Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to `true`.
  final pulumi.Input<bool?>? alertsForAllJobFailuresEnabled;
  /// Enabling/Disabling built-in Azure Monitor alerts for all replication issues. Defaults to `true`.
  final pulumi.Input<bool?>? alertsForAllReplicationIssuesEnabled;
  /// Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to `true`. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview).
  final pulumi.Input<bool?>? alertsForCriticalOperationFailuresEnabled;
  /// Enabling/Disabling email notifications for site recovery (classic alerts) solution. Defaults to `true`.
  final pulumi.Input<bool?>? emailNotificationsForSiteRecoveryEnabled;

  /// Creates a new [VaultMonitoring].
  /// [alertsForAllFailoverIssuesEnabled] Enabling/Disabling built-in Azure Monitor alerts for all failover issues. Defaults to `true`.
  /// [alertsForAllJobFailuresEnabled] Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to `true`.
  /// [alertsForAllReplicationIssuesEnabled] Enabling/Disabling built-in Azure Monitor alerts for all replication issues. Defaults to `true`.
  /// [alertsForCriticalOperationFailuresEnabled] Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to `true`. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview).
  /// [emailNotificationsForSiteRecoveryEnabled] Enabling/Disabling email notifications for site recovery (classic alerts) solution. Defaults to `true`.
  const VaultMonitoring({
    this.alertsForAllFailoverIssuesEnabled,
    this.alertsForAllJobFailuresEnabled,
    this.alertsForAllReplicationIssuesEnabled,
    this.alertsForCriticalOperationFailuresEnabled,
    this.emailNotificationsForSiteRecoveryEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllFailoverIssuesEnabled': ?alertsForAllFailoverIssuesEnabled,
      'alertsForAllJobFailuresEnabled': ?alertsForAllJobFailuresEnabled,
      'alertsForAllReplicationIssuesEnabled': ?alertsForAllReplicationIssuesEnabled,
      'alertsForCriticalOperationFailuresEnabled': ?alertsForCriticalOperationFailuresEnabled,
      'emailNotificationsForSiteRecoveryEnabled': ?emailNotificationsForSiteRecoveryEnabled,
    };
  }

  factory VaultMonitoring.fromMap(Map<String, dynamic> map) {
    return VaultMonitoring(
      alertsForAllFailoverIssuesEnabled: (() { final guardedValue = map['alertsForAllFailoverIssuesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alertsForAllJobFailuresEnabled: (() { final guardedValue = map['alertsForAllJobFailuresEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alertsForAllReplicationIssuesEnabled: (() { final guardedValue = map['alertsForAllReplicationIssuesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alertsForCriticalOperationFailuresEnabled: (() { final guardedValue = map['alertsForCriticalOperationFailuresEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      emailNotificationsForSiteRecoveryEnabled: (() { final guardedValue = map['emailNotificationsForSiteRecoveryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
