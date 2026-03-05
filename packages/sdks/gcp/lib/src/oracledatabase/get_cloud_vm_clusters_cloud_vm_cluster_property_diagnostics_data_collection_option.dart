// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  final pulumi.Input<bool> diagnosticsEventsEnabled;
  /// Indicates whether health monitoring is enabled for the VM cluster
  final pulumi.Input<bool> healthMonitoringEnabled;
  /// Indicates whether incident logs and trace collection are enabled for the VM
  /// cluster
  final pulumi.Input<bool> incidentLogsEnabled;

  /// Creates a new [GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption].
  /// [diagnosticsEventsEnabled] Indicates whether diagnostic collection is enabled for the VM cluster
  /// [healthMonitoringEnabled] Indicates whether health monitoring is enabled for the VM cluster
  /// [incidentLogsEnabled] Indicates whether incident logs and trace collection are enabled for the VM
  GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption({
    required this.diagnosticsEventsEnabled,
    required this.healthMonitoringEnabled,
    required this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticsEventsEnabled': diagnosticsEventsEnabled,
      'healthMonitoringEnabled': healthMonitoringEnabled,
      'incidentLogsEnabled': incidentLogsEnabled,
    };
  }

  factory GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterPropertyDiagnosticsDataCollectionOption(
      diagnosticsEventsEnabled: pulumi.Input.fromValue(map['diagnosticsEventsEnabled'] as bool),
      healthMonitoringEnabled: pulumi.Input.fromValue(map['healthMonitoringEnabled'] as bool),
      incidentLogsEnabled: pulumi.Input.fromValue(map['incidentLogsEnabled'] as bool),
    );
  }
}

