// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings.dart';
import 'classic_alert_settings.dart';

/// Monitoring Settings of the vault
class MonitoringSettings {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettings>? azureMonitorAlertSettings;
  /// Settings for classic alerts
  final pulumi.Input<ClassicAlertSettings>? classicAlertSettings;

  /// Creates a new [MonitoringSettings].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  /// [classicAlertSettings] Settings for classic alerts
  MonitoringSettings({
    this.azureMonitorAlertSettings,
    this.classicAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettings, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
      'classicAlertSettings': ?pulumi.Input.mapOptionalInputValue<ClassicAlertSettings, Map<String, dynamic>>(classicAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettings.fromMap(Map<String, dynamic> map) {
    return MonitoringSettings(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : (AzureMonitorAlertSettings.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>())).input(),
      classicAlertSettings: map['classicAlertSettings'] == null ? null : (ClassicAlertSettings.fromMap((map['classicAlertSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

