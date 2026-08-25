// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExadbVmClusterPropertiesDataCollectionOptions {
  /// Indicates whether to enable data collection for diagnostics.
  final pulumi.Input<bool?>? isDiagnosticsEventsEnabled;
  /// Indicates whether to enable health monitoring.
  final pulumi.Input<bool?>? isHealthMonitoringEnabled;
  /// Indicates whether to enable incident logs and trace collection.
  final pulumi.Input<bool?>? isIncidentLogsEnabled;

  /// Creates a new [ExadbVmClusterPropertiesDataCollectionOptions].
  /// [isDiagnosticsEventsEnabled] Indicates whether to enable data collection for diagnostics.
  /// [isHealthMonitoringEnabled] Indicates whether to enable health monitoring.
  /// [isIncidentLogsEnabled] Indicates whether to enable incident logs and trace collection.
  const ExadbVmClusterPropertiesDataCollectionOptions({
    this.isDiagnosticsEventsEnabled,
    this.isHealthMonitoringEnabled,
    this.isIncidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isDiagnosticsEventsEnabled': ?isDiagnosticsEventsEnabled,
      'isHealthMonitoringEnabled': ?isHealthMonitoringEnabled,
      'isIncidentLogsEnabled': ?isIncidentLogsEnabled,
    };
  }

  factory ExadbVmClusterPropertiesDataCollectionOptions.fromMap(Map<String, dynamic> map) {
    return ExadbVmClusterPropertiesDataCollectionOptions(
      isDiagnosticsEventsEnabled: (() { final guardedValue = map['isDiagnosticsEventsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isHealthMonitoringEnabled: (() { final guardedValue = map['isHealthMonitoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isIncidentLogsEnabled: (() { final guardedValue = map['isIncidentLogsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
