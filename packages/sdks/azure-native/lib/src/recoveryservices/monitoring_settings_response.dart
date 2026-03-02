// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_monitor_alert_settings_response.dart';
import 'classic_alert_settings_response.dart';

/// Monitoring Settings of the vault
class MonitoringSettingsResponse {
  /// Settings for Azure Monitor based alerts
  final pulumi.Input<AzureMonitorAlertSettingsResponse>? azureMonitorAlertSettings;
  /// Settings for classic alerts
  final pulumi.Input<ClassicAlertSettingsResponse>? classicAlertSettings;

  /// Creates a new [MonitoringSettingsResponse].
  /// [azureMonitorAlertSettings] Settings for Azure Monitor based alerts
  /// [classicAlertSettings] Settings for classic alerts
  MonitoringSettingsResponse({
    this.azureMonitorAlertSettings,
    this.classicAlertSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorAlertSettings': ?pulumi.Input.mapOptionalInputValue<AzureMonitorAlertSettingsResponse, Map<String, dynamic>>(azureMonitorAlertSettings, (value) => value.toMap()),
      'classicAlertSettings': ?pulumi.Input.mapOptionalInputValue<ClassicAlertSettingsResponse, Map<String, dynamic>>(classicAlertSettings, (value) => value.toMap()),
    };
  }

  factory MonitoringSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringSettingsResponse(
      azureMonitorAlertSettings: map['azureMonitorAlertSettings'] == null ? null : (AzureMonitorAlertSettingsResponse.fromMap((map['azureMonitorAlertSettings'] as Map).cast<String, dynamic>())).input(),
      classicAlertSettings: map['classicAlertSettings'] == null ? null : (ClassicAlertSettingsResponse.fromMap((map['classicAlertSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

