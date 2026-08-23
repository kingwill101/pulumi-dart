// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_verifier_workspace_reachability_analysis_intent_ip_traffic.dart';

/// {@template pulumi_network_network_manager_verifier_workspace_reachability_analysis_intent_network_manager_verifier_workspace_reachability_analysis_intent_args_doc}
/// The set of arguments for NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_verifier_workspace_reachability_analysis_intent_network_manager_verifier_workspace_reachability_analysis_intent_args_doc}
class NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs {
  /// The description of the resource. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? description;
  /// The ID of the destination resource. The value can be the ID of either Public internet, Cosmos DB, Storage Account, SQL Server, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String> destinationResourceId;
  /// An `ipTraffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic> ipTraffic;
  /// The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? name;
  /// The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String> sourceResourceId;
  /// The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String> verifierWorkspaceId;

  /// Creates a new [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs].
  /// [description] The description of the resource. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [destinationResourceId] The ID of the destination resource. The value can be the ID of either Public internet, Cosmos DB, Storage Account, SQL Server, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [ipTraffic] An `ipTraffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [name] The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [sourceResourceId] The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [verifierWorkspaceId] The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  const NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs({
    this.description,
    required this.destinationResourceId,
    required this.ipTraffic,
    this.name,
    required this.sourceResourceId,
    required this.verifierWorkspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': destinationResourceId,
      'ipTraffic': pulumi.Input.mapInputValue<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic, Map<String, dynamic>>(ipTraffic, (value) => value.toMap()),
      'name': ?name,
      'sourceResourceId': sourceResourceId,
      'verifierWorkspaceId': verifierWorkspaceId,
    };
  }

  factory NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationResourceId: pulumi.Input.fromValue(map['destinationResourceId'] as String),
      ipTraffic: pulumi.Input.fromValue(NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap((map['ipTraffic']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: pulumi.Input.fromValue(map['sourceResourceId'] as String),
      verifierWorkspaceId: pulumi.Input.fromValue(map['verifierWorkspaceId'] as String),
    );
  }
}
