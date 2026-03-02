// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterDataCollectionOptions {
  /// Indicates whether diagnostic collection is enabled for the VM Cluster/Cloud VM Cluster/VMBM DBCS. Enabling diagnostic collection allows you to receive Events service notifications for guest VM issues. Diagnostic collection also allows Oracle to provide enhanced service and proactive support for your Exadata system. You can enable diagnostic collection during VM Cluster/Cloud VM Cluster provisioning. You can also disable or enable it at any time using the `UpdateVmCluster` or `updateCloudVmCluster` API. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool>? diagnosticsEventsEnabled;
  /// Indicates whether health monitoring is enabled for the VM Cluster / Cloud VM Cluster / VMBM DBCS. Enabling health monitoring allows Oracle to collect diagnostic data and share it with its operations and support personnel. You may also receive notifications for some events. Collecting health diagnostics enables Oracle to provide proactive support and enhanced service for your system. Optionally enable health monitoring while provisioning a system. You can also disable or enable health monitoring anytime using the `UpdateVmCluster`, `UpdateCloudVmCluster` or `updateDbsystem` API. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool>? healthMonitoringEnabled;
  /// Indicates whether incident logs and trace collection are enabled for the VM Cluster / Cloud VM Cluster / VMBM DBCS. Enabling incident logs collection allows Oracle to receive Events service notifications for guest VM issues, collect incident logs and traces, and use them to diagnose issues and resolve them. Optionally enable incident logs collection while provisioning a system. You can also disable or enable incident logs collection anytime using the `UpdateVmCluster`, `updateCloudVmCluster` or `updateDbsystem` API. Changing this forces a new Cloud VM Cluster to be created.
  final pulumi.Input<bool>? incidentLogsEnabled;

  /// Creates a new [CloudVmClusterDataCollectionOptions].
  /// [diagnosticsEventsEnabled] Indicates whether diagnostic collection is enabled for the VM Cluster/Cloud VM Cluster/VMBM DBCS. Enabling diagnostic collection allows you to receive Events service notifications for guest VM issues. Diagnostic collection also allows Oracle to provide enhanced service and proactive support for your Exadata system. You can enable diagnostic collection during VM Cluster/Cloud VM Cluster provisioning. You can also disable or enable it at any time using the `UpdateVmCluster` or `updateCloudVmCluster` API. Changing this forces a new Cloud VM Cluster to be created.
  /// [healthMonitoringEnabled] Indicates whether health monitoring is enabled for the VM Cluster / Cloud VM Cluster / VMBM DBCS. Enabling health monitoring allows Oracle to collect diagnostic data and share it with its operations and support personnel. You may also receive notifications for some events. Collecting health diagnostics enables Oracle to provide proactive support and enhanced service for your system. Optionally enable health monitoring while provisioning a system. You can also disable or enable health monitoring anytime using the `UpdateVmCluster`, `UpdateCloudVmCluster` or `updateDbsystem` API. Changing this forces a new Cloud VM Cluster to be created.
  /// [incidentLogsEnabled] Indicates whether incident logs and trace collection are enabled for the VM Cluster / Cloud VM Cluster / VMBM DBCS. Enabling incident logs collection allows Oracle to receive Events service notifications for guest VM issues, collect incident logs and traces, and use them to diagnose issues and resolve them. Optionally enable incident logs collection while provisioning a system. You can also disable or enable incident logs collection anytime using the `UpdateVmCluster`, `updateCloudVmCluster` or `updateDbsystem` API. Changing this forces a new Cloud VM Cluster to be created.
  CloudVmClusterDataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnosticsEventsEnabled': ?diagnosticsEventsEnabled,
      'healthMonitoringEnabled': ?healthMonitoringEnabled,
      'incidentLogsEnabled': ?incidentLogsEnabled,
    };
  }

  factory CloudVmClusterDataCollectionOptions.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterDataCollectionOptions(
      diagnosticsEventsEnabled: map['diagnosticsEventsEnabled'] == null ? null : (map['diagnosticsEventsEnabled'] as bool).input(),
      healthMonitoringEnabled: map['healthMonitoringEnabled'] == null ? null : (map['healthMonitoringEnabled'] as bool).input(),
      incidentLogsEnabled: map['incidentLogsEnabled'] == null ? null : (map['incidentLogsEnabled'] as bool).input(),
    );
  }
}

