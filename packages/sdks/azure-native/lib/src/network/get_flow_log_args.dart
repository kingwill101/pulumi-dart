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
    required pulumi.Output<String> flowLogName,
    required pulumi.Output<String> networkWatcherName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      flowLogName = pulumi.Input.asInput<String>(flowLogName),
      networkWatcherName = pulumi.Input.asInput<String>(networkWatcherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowLogName': flowLogName,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFlowLogArgs.fromMap(Map<String, dynamic> map) {
    return GetFlowLogArgs(
      flowLogName: pulumi.Output.create<String>(map['flowLogName'] as String),
      networkWatcherName: pulumi.Output.create<String>(map['networkWatcherName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

