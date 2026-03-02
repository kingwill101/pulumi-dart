// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_flow_log_args_doc}
/// Arguments for getFlowLog.
/// {@endtemplate}
/// {@macro pulumi_network_get_flow_log_args_doc}
class GetFlowLogArgs {
  /// The name of the flow log resource.
  final pulumi.Input<String> flowLogName;
  /// The name of the network watcher.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFlowLogArgs].
  /// [flowLogName] The name of the flow log resource.
  /// [networkWatcherName] The name of the network watcher.
  /// [resourceGroupName] The name of the resource group.
  GetFlowLogArgs({
    required this.flowLogName,
    required this.networkWatcherName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowLogName': flowLogName,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlowLogArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowLogArgs(
      flowLogName: (map['flowLogName'] as String).input(),
      networkWatcherName: (map['networkWatcherName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

