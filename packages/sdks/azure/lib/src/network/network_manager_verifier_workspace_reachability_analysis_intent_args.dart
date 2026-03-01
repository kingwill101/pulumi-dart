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
  /// An `ip_traffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
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
  /// [ipTraffic] An `ip_traffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [name] The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [sourceResourceId] The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [verifierWorkspaceId] The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> destinationResourceId,
    required pulumi.Output<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic> ipTraffic,
    pulumi.Output<String>? name,
    required pulumi.Output<String> sourceResourceId,
    required pulumi.Output<String> verifierWorkspaceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationResourceId = pulumi.Input.asInput<String>(destinationResourceId),
      ipTraffic = pulumi.Input.asInput<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>(ipTraffic),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceResourceId = pulumi.Input.asInput<String>(sourceResourceId),
      verifierWorkspaceId = pulumi.Input.asInput<String>(verifierWorkspaceId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationResourceId: pulumi.Output.create<String>(map['destinationResourceId'] as String),
      ipTraffic: pulumi.Output.create<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>(NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceResourceId: pulumi.Output.create<String>(map['sourceResourceId'] as String),
      verifierWorkspaceId: pulumi.Output.create<String>(map['verifierWorkspaceId'] as String),
    );
  }
}

