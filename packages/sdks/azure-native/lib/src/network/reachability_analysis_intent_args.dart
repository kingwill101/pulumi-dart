// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reachability_analysis_intent_properties.dart';

/// {@template pulumi_network_reachability_analysis_intent_args_doc}
/// The set of arguments for ReachabilityAnalysisIntent.
/// {@endtemplate}
/// {@macro pulumi_network_reachability_analysis_intent_args_doc}
class ReachabilityAnalysisIntentArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Represents the Reachability Analysis Intent properties.
  final pulumi.Input<ReachabilityAnalysisIntentProperties> properties;
  /// Reachability Analysis Intent name.
  final pulumi.Input<String>? reachabilityAnalysisIntentName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Workspace name.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ReachabilityAnalysisIntentArgs].
  /// [networkManagerName] The name of the network manager.
  /// [properties] Represents the Reachability Analysis Intent properties.
  /// [reachabilityAnalysisIntentName] Reachability Analysis Intent name.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceName] Workspace name.
  ReachabilityAnalysisIntentArgs({
    required this.networkManagerName,
    required this.properties,
    this.reachabilityAnalysisIntentName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'properties': pulumi.Input.mapInputValue<ReachabilityAnalysisIntentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'reachabilityAnalysisIntentName': ?reachabilityAnalysisIntentName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ReachabilityAnalysisIntentArgs.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisIntentArgs(
      networkManagerName: (map['networkManagerName'] as String).input(),
      properties: (ReachabilityAnalysisIntentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      reachabilityAnalysisIntentName: map['reachabilityAnalysisIntentName'] == null ? null : (map['reachabilityAnalysisIntentName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

