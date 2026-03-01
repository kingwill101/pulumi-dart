// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_areplication_protection_cluster_details_response.dart';
import 'current_scenario_details_response.dart';
import 'health_error_response.dart';
import 'registered_cluster_nodes_response.dart';
import 'shared_disk_replication_item_properties_response.dart';

/// Replication protection cluster custom data details.
class ReplicationProtectionClusterPropertiesResponse {
  /// The Current active location of the Protection cluster.
  final String? activeLocation;
  /// The Agent cluster Id.
  final String? agentClusterId;
  /// The allowed operations on the Replication protection cluster.
  final List<String>? allowedOperations;
  /// A value indicating whether all nodes of the cluster are registered or not.
  final bool? areAllClusterNodesRegistered;
  /// The cluster FQDN.
  final String? clusterFqdn;
  /// The List of cluster Node FQDNs.
  final List<String>? clusterNodeFqdns;
  /// The List of Protected Item Id's.
  final List<String>? clusterProtectedItemIds;
  /// The registered node details.
  final List<RegisteredClusterNodesResponse>? clusterRegisteredNodes;
  /// The current scenario.
  final CurrentScenarioDetailsResponse? currentScenario;
  /// List of health errors.
  final List<HealthErrorResponse>? healthErrors;
  /// The last successful failover time.
  final String? lastSuccessfulFailoverTime;
  /// The last successful test failover time.
  final String? lastSuccessfulTestFailoverTime;
  /// The name of Policy governing this PE.
  final String? policyFriendlyName;
  /// The Policy Id.
  final String? policyId;
  /// The friendly name of the primary fabric.
  final String? primaryFabricFriendlyName;
  /// The fabric provider of the primary fabric.
  final String? primaryFabricProvider;
  /// The name of primary protection container friendly name.
  final String? primaryProtectionContainerFriendlyName;
  /// The type of protection cluster type.
  final String? protectionClusterType;
  /// The protection status.
  final String? protectionState;
  /// The protection state description.
  final String? protectionStateDescription;
  /// The Replication cluster provider custom settings.
  final A2AReplicationProtectionClusterDetailsResponse? providerSpecificDetails;
  /// The provisioning state of the cluster.
  final String provisioningState;
  /// The recovery container Id.
  final String? recoveryContainerId;
  /// The friendly name of recovery fabric.
  final String? recoveryFabricFriendlyName;
  /// The Arm Id of recovery fabric.
  final String? recoveryFabricId;
  /// The name of recovery container friendly name.
  final String? recoveryProtectionContainerFriendlyName;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final String? replicationHealth;
  /// The shared disk properties.
  final SharedDiskReplicationItemPropertiesResponse? sharedDiskProperties;
  /// The Test failover state.
  final String? testFailoverState;
  /// The Test failover state description.
  final String? testFailoverStateDescription;

  /// Creates a new [ReplicationProtectionClusterPropertiesResponse].
  /// [activeLocation] The Current active location of the Protection cluster.
  /// [agentClusterId] The Agent cluster Id.
  /// [allowedOperations] The allowed operations on the Replication protection cluster.
  /// [areAllClusterNodesRegistered] A value indicating whether all nodes of the cluster are registered or not.
  /// [clusterFqdn] The cluster FQDN.
  /// [clusterNodeFqdns] The List of cluster Node FQDNs.
  /// [clusterProtectedItemIds] The List of Protected Item Id's.
  /// [clusterRegisteredNodes] The registered node details.
  /// [currentScenario] The current scenario.
  /// [healthErrors] List of health errors.
  /// [lastSuccessfulFailoverTime] The last successful failover time.
  /// [lastSuccessfulTestFailoverTime] The last successful test failover time.
  /// [policyFriendlyName] The name of Policy governing this PE.
  /// [policyId] The Policy Id.
  /// [primaryFabricFriendlyName] The friendly name of the primary fabric.
  /// [primaryFabricProvider] The fabric provider of the primary fabric.
  /// [primaryProtectionContainerFriendlyName] The name of primary protection container friendly name.
  /// [protectionClusterType] The type of protection cluster type.
  /// [protectionState] The protection status.
  /// [protectionStateDescription] The protection state description.
  /// [providerSpecificDetails] The Replication cluster provider custom settings.
  /// [provisioningState] The provisioning state of the cluster.
  /// [recoveryContainerId] The recovery container Id.
  /// [recoveryFabricFriendlyName] The friendly name of recovery fabric.
  /// [recoveryFabricId] The Arm Id of recovery fabric.
  /// [recoveryProtectionContainerFriendlyName] The name of recovery container friendly name.
  /// [replicationHealth] The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  /// [sharedDiskProperties] The shared disk properties.
  /// [testFailoverState] The Test failover state.
  /// [testFailoverStateDescription] The Test failover state description.
  ReplicationProtectionClusterPropertiesResponse({
    this.activeLocation,
    this.agentClusterId,
    this.allowedOperations,
    this.areAllClusterNodesRegistered,
    this.clusterFqdn,
    this.clusterNodeFqdns,
    this.clusterProtectedItemIds,
    this.clusterRegisteredNodes,
    this.currentScenario,
    this.healthErrors,
    this.lastSuccessfulFailoverTime,
    this.lastSuccessfulTestFailoverTime,
    this.policyFriendlyName,
    this.policyId,
    this.primaryFabricFriendlyName,
    this.primaryFabricProvider,
    this.primaryProtectionContainerFriendlyName,
    this.protectionClusterType,
    this.protectionState,
    this.protectionStateDescription,
    this.providerSpecificDetails,
    required this.provisioningState,
    this.recoveryContainerId,
    this.recoveryFabricFriendlyName,
    this.recoveryFabricId,
    this.recoveryProtectionContainerFriendlyName,
    this.replicationHealth,
    this.sharedDiskProperties,
    this.testFailoverState,
    this.testFailoverStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': ?activeLocation,
      'agentClusterId': ?agentClusterId,
      'allowedOperations': ?allowedOperations,
      'areAllClusterNodesRegistered': ?areAllClusterNodesRegistered,
      'clusterFqdn': ?clusterFqdn,
      'clusterNodeFqdns': ?clusterNodeFqdns,
      'clusterProtectedItemIds': ?clusterProtectedItemIds,
      'clusterRegisteredNodes': ?clusterRegisteredNodes == null ? null : pulumi.Input.encodeList<RegisteredClusterNodesResponse, Map<String, dynamic>>(clusterRegisteredNodes!, (value) => value.toMap()),
      'currentScenario': ?currentScenario == null ? null : currentScenario!.toMap(),
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'lastSuccessfulFailoverTime': ?lastSuccessfulFailoverTime,
      'lastSuccessfulTestFailoverTime': ?lastSuccessfulTestFailoverTime,
      'policyFriendlyName': ?policyFriendlyName,
      'policyId': ?policyId,
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryFabricProvider': ?primaryFabricProvider,
      'primaryProtectionContainerFriendlyName': ?primaryProtectionContainerFriendlyName,
      'protectionClusterType': ?protectionClusterType,
      'protectionState': ?protectionState,
      'protectionStateDescription': ?protectionStateDescription,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : providerSpecificDetails!.toMap(),
      'provisioningState': provisioningState,
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'recoveryProtectionContainerFriendlyName': ?recoveryProtectionContainerFriendlyName,
      'replicationHealth': ?replicationHealth,
      'sharedDiskProperties': ?sharedDiskProperties == null ? null : sharedDiskProperties!.toMap(),
      'testFailoverState': ?testFailoverState,
      'testFailoverStateDescription': ?testFailoverStateDescription,
    };
  }

  factory ReplicationProtectionClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectionClusterPropertiesResponse(
      activeLocation: map['activeLocation'] == null ? null : map['activeLocation'] as String,
      agentClusterId: map['agentClusterId'] == null ? null : map['agentClusterId'] as String,
      allowedOperations: map['allowedOperations'] == null ? null : (map['allowedOperations'] as List).cast<String>(),
      areAllClusterNodesRegistered: map['areAllClusterNodesRegistered'] == null ? null : map['areAllClusterNodesRegistered'] as bool,
      clusterFqdn: map['clusterFqdn'] == null ? null : map['clusterFqdn'] as String,
      clusterNodeFqdns: map['clusterNodeFqdns'] == null ? null : (map['clusterNodeFqdns'] as List).cast<String>(),
      clusterProtectedItemIds: map['clusterProtectedItemIds'] == null ? null : (map['clusterProtectedItemIds'] as List).cast<String>(),
      clusterRegisteredNodes: map['clusterRegisteredNodes'] == null ? null : pulumi.Input.decodeList<RegisteredClusterNodesResponse>(map['clusterRegisteredNodes'], (value) => RegisteredClusterNodesResponse.fromMap((value as Map).cast<String, dynamic>())),
      currentScenario: map['currentScenario'] == null ? null : CurrentScenarioDetailsResponse.fromMap((map['currentScenario'] as Map).cast<String, dynamic>()),
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastSuccessfulFailoverTime: map['lastSuccessfulFailoverTime'] == null ? null : map['lastSuccessfulFailoverTime'] as String,
      lastSuccessfulTestFailoverTime: map['lastSuccessfulTestFailoverTime'] == null ? null : map['lastSuccessfulTestFailoverTime'] as String,
      policyFriendlyName: map['policyFriendlyName'] == null ? null : map['policyFriendlyName'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      primaryFabricFriendlyName: map['primaryFabricFriendlyName'] == null ? null : map['primaryFabricFriendlyName'] as String,
      primaryFabricProvider: map['primaryFabricProvider'] == null ? null : map['primaryFabricProvider'] as String,
      primaryProtectionContainerFriendlyName: map['primaryProtectionContainerFriendlyName'] == null ? null : map['primaryProtectionContainerFriendlyName'] as String,
      protectionClusterType: map['protectionClusterType'] == null ? null : map['protectionClusterType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      protectionStateDescription: map['protectionStateDescription'] == null ? null : map['protectionStateDescription'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : A2AReplicationProtectionClusterDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      recoveryContainerId: map['recoveryContainerId'] == null ? null : map['recoveryContainerId'] as String,
      recoveryFabricFriendlyName: map['recoveryFabricFriendlyName'] == null ? null : map['recoveryFabricFriendlyName'] as String,
      recoveryFabricId: map['recoveryFabricId'] == null ? null : map['recoveryFabricId'] as String,
      recoveryProtectionContainerFriendlyName: map['recoveryProtectionContainerFriendlyName'] == null ? null : map['recoveryProtectionContainerFriendlyName'] as String,
      replicationHealth: map['replicationHealth'] == null ? null : map['replicationHealth'] as String,
      sharedDiskProperties: map['sharedDiskProperties'] == null ? null : SharedDiskReplicationItemPropertiesResponse.fromMap((map['sharedDiskProperties'] as Map).cast<String, dynamic>()),
      testFailoverState: map['testFailoverState'] == null ? null : map['testFailoverState'] as String,
      testFailoverStateDescription: map['testFailoverStateDescription'] == null ? null : map['testFailoverStateDescription'] as String,
    );
  }
}

