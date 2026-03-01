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
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<ReachabilityAnalysisIntentProperties> properties,
    pulumi.Output<String>? reachabilityAnalysisIntentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      properties = pulumi.Input.asInput<ReachabilityAnalysisIntentProperties>(properties),
      reachabilityAnalysisIntentName = pulumi.Input.asOptionalInput<String>(reachabilityAnalysisIntentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      properties: pulumi.Output.create<ReachabilityAnalysisIntentProperties>(ReachabilityAnalysisIntentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      reachabilityAnalysisIntentName: map['reachabilityAnalysisIntentName'] == null ? null : pulumi.Output.create<String>(map['reachabilityAnalysisIntentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

