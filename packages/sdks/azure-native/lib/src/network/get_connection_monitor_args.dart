// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_connection_monitor_args_doc}
/// Arguments for getConnectionMonitor.
/// {@endtemplate}
/// {@macro pulumi_network_get_connection_monitor_args_doc}
class GetConnectionMonitorArgs {
  /// The name of the connection monitor.
  final pulumi.Input<String> connectionMonitorName;
  /// The name of the Network Watcher resource.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group containing Network Watcher.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectionMonitorArgs].
  /// [connectionMonitorName] The name of the connection monitor.
  /// [networkWatcherName] The name of the Network Watcher resource.
  /// [resourceGroupName] The name of the resource group containing Network Watcher.
  GetConnectionMonitorArgs({
    required this.connectionMonitorName,
    required this.networkWatcherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMonitorName': connectionMonitorName,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectionMonitorArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorArgs(
      connectionMonitorName: (map['connectionMonitorName'] as String).input(),
      networkWatcherName: (map['networkWatcherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

