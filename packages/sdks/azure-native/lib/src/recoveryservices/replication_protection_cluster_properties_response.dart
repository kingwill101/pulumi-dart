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
  final pulumi.Input<String>? activeLocation;
  /// The Agent cluster Id.
  final pulumi.Input<String>? agentClusterId;
  /// The allowed operations on the Replication protection cluster.
  final pulumi.Input<List<String>>? allowedOperations;
  /// A value indicating whether all nodes of the cluster are registered or not.
  final pulumi.Input<bool>? areAllClusterNodesRegistered;
  /// The cluster FQDN.
  final pulumi.Input<String>? clusterFqdn;
  /// The List of cluster Node FQDNs.
  final pulumi.Input<List<String>>? clusterNodeFqdns;
  /// The List of Protected Item Id's.
  final pulumi.Input<List<String>>? clusterProtectedItemIds;
  /// The registered node details.
  final pulumi.Input<List<RegisteredClusterNodesResponse>>? clusterRegisteredNodes;
  /// The current scenario.
  final pulumi.Input<CurrentScenarioDetailsResponse>? currentScenario;
  /// List of health errors.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;
  /// The last successful failover time.
  final pulumi.Input<String>? lastSuccessfulFailoverTime;
  /// The last successful test failover time.
  final pulumi.Input<String>? lastSuccessfulTestFailoverTime;
  /// The name of Policy governing this PE.
  final pulumi.Input<String>? policyFriendlyName;
  /// The Policy Id.
  final pulumi.Input<String>? policyId;
  /// The friendly name of the primary fabric.
  final pulumi.Input<String>? primaryFabricFriendlyName;
  /// The fabric provider of the primary fabric.
  final pulumi.Input<String>? primaryFabricProvider;
  /// The name of primary protection container friendly name.
  final pulumi.Input<String>? primaryProtectionContainerFriendlyName;
  /// The type of protection cluster type.
  final pulumi.Input<String>? protectionClusterType;
  /// The protection status.
  final pulumi.Input<String>? protectionState;
  /// The protection state description.
  final pulumi.Input<String>? protectionStateDescription;
  /// The Replication cluster provider custom settings.
  final pulumi.Input<A2AReplicationProtectionClusterDetailsResponse>? providerSpecificDetails;
  /// The provisioning state of the cluster.
  final pulumi.Input<String> provisioningState;
  /// The recovery container Id.
  final pulumi.Input<String>? recoveryContainerId;
  /// The friendly name of recovery fabric.
  final pulumi.Input<String>? recoveryFabricFriendlyName;
  /// The Arm Id of recovery fabric.
  final pulumi.Input<String>? recoveryFabricId;
  /// The name of recovery container friendly name.
  final pulumi.Input<String>? recoveryProtectionContainerFriendlyName;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final pulumi.Input<String>? replicationHealth;
  /// The shared disk properties.
  final pulumi.Input<SharedDiskReplicationItemPropertiesResponse>? sharedDiskProperties;
  /// The Test failover state.
  final pulumi.Input<String>? testFailoverState;
  /// The Test failover state description.
  final pulumi.Input<String>? testFailoverStateDescription;

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
  const ReplicationProtectionClusterPropertiesResponse({
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
      'clusterRegisteredNodes': ?pulumi.Input.mapOptionalInputValue<List<RegisteredClusterNodesResponse>, List<Map<String, dynamic>>>(clusterRegisteredNodes, (value) => pulumi.Input.encodeList<RegisteredClusterNodesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'currentScenario': ?pulumi.Input.mapOptionalInputValue<CurrentScenarioDetailsResponse, Map<String, dynamic>>(currentScenario, (value) => value.toMap()),
      'healthErrors': ?pulumi.Input.mapOptionalInputValue<List<HealthErrorResponse>, List<Map<String, dynamic>>>(healthErrors, (value) => pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<A2AReplicationProtectionClusterDetailsResponse, Map<String, dynamic>>(providerSpecificDetails, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'recoveryProtectionContainerFriendlyName': ?recoveryProtectionContainerFriendlyName,
      'replicationHealth': ?replicationHealth,
      'sharedDiskProperties': ?pulumi.Input.mapOptionalInputValue<SharedDiskReplicationItemPropertiesResponse, Map<String, dynamic>>(sharedDiskProperties, (value) => value.toMap()),
      'testFailoverState': ?testFailoverState,
      'testFailoverStateDescription': ?testFailoverStateDescription,
    };
  }

  factory ReplicationProtectionClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectionClusterPropertiesResponse(
      activeLocation: (() { final guardedValue = map['activeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agentClusterId: (() { final guardedValue = map['agentClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedOperations: (() { final guardedValue = map['allowedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      areAllClusterNodesRegistered: (() { final guardedValue = map['areAllClusterNodesRegistered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterFqdn: (() { final guardedValue = map['clusterFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterNodeFqdns: (() { final guardedValue = map['clusterNodeFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterProtectedItemIds: (() { final guardedValue = map['clusterProtectedItemIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterRegisteredNodes: (() { final guardedValue = map['clusterRegisteredNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegisteredClusterNodesResponse>(guardedValue, (value) => RegisteredClusterNodesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      currentScenario: (() { final guardedValue = map['currentScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CurrentScenarioDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      healthErrors: (() { final guardedValue = map['healthErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HealthErrorResponse>(guardedValue, (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastSuccessfulFailoverTime: (() { final guardedValue = map['lastSuccessfulFailoverTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastSuccessfulTestFailoverTime: (() { final guardedValue = map['lastSuccessfulTestFailoverTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyFriendlyName: (() { final guardedValue = map['policyFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryFabricFriendlyName: (() { final guardedValue = map['primaryFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryFabricProvider: (() { final guardedValue = map['primaryFabricProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryProtectionContainerFriendlyName: (() { final guardedValue = map['primaryProtectionContainerFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionClusterType: (() { final guardedValue = map['protectionClusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionStateDescription: (() { final guardedValue = map['protectionStateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(A2AReplicationProtectionClusterDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      recoveryContainerId: (() { final guardedValue = map['recoveryContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricFriendlyName: (() { final guardedValue = map['recoveryFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricId: (() { final guardedValue = map['recoveryFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryProtectionContainerFriendlyName: (() { final guardedValue = map['recoveryProtectionContainerFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationHealth: (() { final guardedValue = map['replicationHealth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedDiskProperties: (() { final guardedValue = map['sharedDiskProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SharedDiskReplicationItemPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      testFailoverState: (() { final guardedValue = map['testFailoverState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testFailoverStateDescription: (() { final guardedValue = map['testFailoverStateDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

