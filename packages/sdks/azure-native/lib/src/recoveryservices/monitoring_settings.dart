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
  const MonitoringSettings({
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
      azureMonitorAlertSettings: (() { final guardedValue = map['azureMonitorAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureMonitorAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      classicAlertSettings: (() { final guardedValue = map['classicAlertSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassicAlertSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
