// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reachability_analysis_run_properties.dart';

/// {@template pulumi_network_reachability_analysis_run_args_doc}
/// The set of arguments for ReachabilityAnalysisRun.
/// {@endtemplate}
/// {@macro pulumi_network_reachability_analysis_run_args_doc}
class ReachabilityAnalysisRunArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Represents the Reachability Analysis Run properties.
  final pulumi.Input<ReachabilityAnalysisRunProperties> properties;
  /// Reachability Analysis Run name.
  final pulumi.Input<String>? reachabilityAnalysisRunName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ReachabilityAnalysisRunArgs].
  /// [networkManagerName] The name of the network manager.
  /// [properties] Represents the Reachability Analysis Run properties.
  /// [reachabilityAnalysisRunName] Reachability Analysis Run name.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  ReachabilityAnalysisRunArgs({
    required this.networkManagerName,
    required this.properties,
    this.reachabilityAnalysisRunName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'properties': pulumi.Input.mapInputValue<ReachabilityAnalysisRunProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'reachabilityAnalysisRunName': ?reachabilityAnalysisRunName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ReachabilityAnalysisRunArgs.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisRunArgs(
      networkManagerName: (map['networkManagerName'] as String).input(),
      properties: (ReachabilityAnalysisRunProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      reachabilityAnalysisRunName: map['reachabilityAnalysisRunName'] == null ? null : (map['reachabilityAnalysisRunName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

