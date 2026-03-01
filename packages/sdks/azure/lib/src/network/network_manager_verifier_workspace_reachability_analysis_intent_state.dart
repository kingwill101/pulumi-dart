// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_verifier_workspace_reachability_analysis_intent_ip_traffic.dart';

/// Input properties used for looking up and filtering NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent resources.
class NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState {
  /// The description of the resource. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? description;
  /// The ID of the destination resource. The value can be the ID of either Public internet, Cosmos DB, Storage Account, SQL Server, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? destinationResourceId;
  /// An `ip_traffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>? ipTraffic;
  /// The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? name;
  /// The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? sourceResourceId;
  /// The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final pulumi.Input<String>? verifierWorkspaceId;

  /// Creates a new [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState].
  /// [description] The description of the resource. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [destinationResourceId] The ID of the destination resource. The value can be the ID of either Public internet, Cosmos DB, Storage Account, SQL Server, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [ipTraffic] An `ip_traffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [name] The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [sourceResourceId] The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [verifierWorkspaceId] The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationResourceId,
    pulumi.Output<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>? ipTraffic,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? verifierWorkspaceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationResourceId = pulumi.Input.asOptionalInput<String>(destinationResourceId),
      ipTraffic = pulumi.Input.asOptionalInput<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>(ipTraffic),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      verifierWorkspaceId = pulumi.Input.asOptionalInput<String>(verifierWorkspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationResourceId': ?destinationResourceId,
      'ipTraffic': ?pulumi.Input.mapOptionalInputValue<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic, Map<String, dynamic>>(ipTraffic, (value) => value.toMap()),
      'name': ?name,
      'sourceResourceId': ?sourceResourceId,
      'verifierWorkspaceId': ?verifierWorkspaceId,
    };
  }

  factory NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationResourceId: map['destinationResourceId'] == null ? null : pulumi.Output.create<String>(map['destinationResourceId'] as String),
      ipTraffic: map['ipTraffic'] == null ? null : pulumi.Output.create<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>(NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap((map['ipTraffic'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      verifierWorkspaceId: map['verifierWorkspaceId'] == null ? null : pulumi.Output.create<String>(map['verifierWorkspaceId'] as String),
    );
  }
}

