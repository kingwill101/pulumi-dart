// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_reachability_analysis_run_args_doc}
/// Arguments for getReachabilityAnalysisRun.
/// {@endtemplate}
/// {@macro pulumi_network_get_reachability_analysis_run_args_doc}
class GetReachabilityAnalysisRunArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;

  /// Reachability Analysis Run name.
  final pulumi.Input<String> reachabilityAnalysisRunName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetReachabilityAnalysisRunArgs].
  /// [networkManagerName] The name of the network manager.
  /// [reachabilityAnalysisRunName] Reachability Analysis Run name.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  GetReachabilityAnalysisRunArgs({
    required this.networkManagerName,
    required this.reachabilityAnalysisRunName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'reachabilityAnalysisRunName': reachabilityAnalysisRunName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetReachabilityAnalysisRunArgs.fromMap(Map<String, dynamic> map) {
    return GetReachabilityAnalysisRunArgs(
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      reachabilityAnalysisRunName: pulumi.Input.fromValue(
        map['reachabilityAnalysisRunName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
