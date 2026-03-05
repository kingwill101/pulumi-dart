// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_watcher_args_doc}
/// Arguments for getNetworkWatcher.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_watcher_args_doc}
class GetNetworkWatcherArgs {
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkWatcherArgs].
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkWatcherArgs({
    required this.networkWatcherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkWatcherArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkWatcherArgs(
      networkWatcherName: pulumi.Input.fromValue(map['networkWatcherName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

