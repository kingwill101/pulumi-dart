// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VaultMonitoring {
  /// Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to `true`.
  final pulumi.Input<bool>? alertsForAllJobFailuresEnabled;
  /// Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to `true`. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview).
  final pulumi.Input<bool>? alertsForCriticalOperationFailuresEnabled;

  /// Creates a new [VaultMonitoring].
  /// [alertsForAllJobFailuresEnabled] Enabling/Disabling built-in Azure Monitor alerts for security scenarios and job failure scenarios. Defaults to `true`.
  /// [alertsForCriticalOperationFailuresEnabled] Enabling/Disabling alerts from the older (classic alerts) solution. Defaults to `true`. More details could be found [here](https://learn.microsoft.com/en-us/azure/backup/monitoring-and-alerts-overview).
  VaultMonitoring({
    this.alertsForAllJobFailuresEnabled,
    this.alertsForCriticalOperationFailuresEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsForAllJobFailuresEnabled': ?alertsForAllJobFailuresEnabled,
      'alertsForCriticalOperationFailuresEnabled': ?alertsForCriticalOperationFailuresEnabled,
    };
  }

  factory VaultMonitoring.fromMap(Map<String, dynamic> map) {
    return VaultMonitoring(
      alertsForAllJobFailuresEnabled: map['alertsForAllJobFailuresEnabled'] == null ? null : (map['alertsForAllJobFailuresEnabled']! as bool).input(),
      alertsForCriticalOperationFailuresEnabled: map['alertsForCriticalOperationFailuresEnabled'] == null ? null : (map['alertsForCriticalOperationFailuresEnabled']! as bool).input(),
    );
  }
}

