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
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<ReachabilityAnalysisRunProperties> properties,
    pulumi.Output<String>? reachabilityAnalysisRunName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      properties = pulumi.Input.asInput<ReachabilityAnalysisRunProperties>(properties),
      reachabilityAnalysisRunName = pulumi.Input.asOptionalInput<String>(reachabilityAnalysisRunName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      properties: pulumi.Output.create<ReachabilityAnalysisRunProperties>(ReachabilityAnalysisRunProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      reachabilityAnalysisRunName: map['reachabilityAnalysisRunName'] == null ? null : pulumi.Output.create<String>(map['reachabilityAnalysisRunName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

