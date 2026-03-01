// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_across_cluster_migration_replication_details_response.dart';
import 'current_scenario_details_response.dart';
import 'health_error_response.dart';

/// Replication protected item custom data details.
class ReplicationProtectedItemPropertiesResponse {
  /// The Current active location of the PE.
  final String? activeLocation;
  /// The allowed operations on the Replication protected item.
  final List<String>? allowedOperations;
  /// The current scenario.
  final CurrentScenarioDetailsResponse? currentScenario;
  /// The correlation Id for events associated with this protected item.
  final String? eventCorrelationId;
  /// The consolidated failover health for the VM.
  final String? failoverHealth;
  /// The recovery point ARM Id to which the Vm was failed over.
  final String? failoverRecoveryPointId;
  /// The name.
  final String? friendlyName;
  /// List of health errors.
  final List<HealthErrorResponse>? healthErrors;
  /// The Last successful failover time.
  final String? lastSuccessfulFailoverTime;
  /// The Last successful test failover time.
  final String? lastSuccessfulTestFailoverTime;
  /// The name of Policy governing this PE.
  final String? policyFriendlyName;
  /// The ID of Policy governing this PE.
  final String? policyId;
  /// The friendly name of the primary fabric.
  final String? primaryFabricFriendlyName;
  /// The fabric provider of the primary fabric.
  final String? primaryFabricProvider;
  /// The name of primary protection container friendly name.
  final String? primaryProtectionContainerFriendlyName;
  /// The protected item ARM Id.
  final String? protectableItemId;
  /// The type of protected item type.
  final String? protectedItemType;
  /// The protection status.
  final String? protectionState;
  /// The protection state description.
  final String? protectionStateDescription;
  /// The Replication provider custom settings.
  final A2ACrossClusterMigrationReplicationDetailsResponse? providerSpecificDetails;
  /// The recovery container Id.
  final String? recoveryContainerId;
  /// The friendly name of recovery fabric.
  final String? recoveryFabricFriendlyName;
  /// The Arm Id of recovery fabric.
  final String? recoveryFabricId;
  /// The name of recovery container friendly name.
  final String? recoveryProtectionContainerFriendlyName;
  /// The recovery provider ARM Id.
  final String? recoveryServicesProviderId;
  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final String? replicationHealth;
  /// The switch provider state.
  final String? switchProviderState;
  /// The switch provider state description.
  final String? switchProviderStateDescription;
  /// The Test failover state.
  final String? testFailoverState;
  /// The Test failover state description.
  final String? testFailoverStateDescription;

  /// Creates a new [ReplicationProtectedItemPropertiesResponse].
  /// [activeLocation] The Current active location of the PE.
  /// [allowedOperations] The allowed operations on the Replication protected item.
  /// [currentScenario] The current scenario.
  /// [eventCorrelationId] The correlation Id for events associated with this protected item.
  /// [failoverHealth] The consolidated failover health for the VM.
  /// [failoverRecoveryPointId] The recovery point ARM Id to which the Vm was failed over.
  /// [friendlyName] The name.
  /// [healthErrors] List of health errors.
  /// [lastSuccessfulFailoverTime] The Last successful failover time.
  /// [lastSuccessfulTestFailoverTime] The Last successful test failover time.
  /// [policyFriendlyName] The name of Policy governing this PE.
  /// [policyId] The ID of Policy governing this PE.
  /// [primaryFabricFriendlyName] The friendly name of the primary fabric.
  /// [primaryFabricProvider] The fabric provider of the primary fabric.
  /// [primaryProtectionContainerFriendlyName] The name of primary protection container friendly name.
  /// [protectableItemId] The protected item ARM Id.
  /// [protectedItemType] The type of protected item type.
  /// [protectionState] The protection status.
  /// [protectionStateDescription] The protection state description.
  /// [providerSpecificDetails] The Replication provider custom settings.
  /// [recoveryContainerId] The recovery container Id.
  /// [recoveryFabricFriendlyName] The friendly name of recovery fabric.
  /// [recoveryFabricId] The Arm Id of recovery fabric.
  /// [recoveryProtectionContainerFriendlyName] The name of recovery container friendly name.
  /// [recoveryServicesProviderId] The recovery provider ARM Id.
  /// [replicationHealth] The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  /// [switchProviderState] The switch provider state.
  /// [switchProviderStateDescription] The switch provider state description.
  /// [testFailoverState] The Test failover state.
  /// [testFailoverStateDescription] The Test failover state description.
  ReplicationProtectedItemPropertiesResponse({
    this.activeLocation,
    this.allowedOperations,
    this.currentScenario,
    this.eventCorrelationId,
    this.failoverHealth,
    this.failoverRecoveryPointId,
    this.friendlyName,
    this.healthErrors,
    this.lastSuccessfulFailoverTime,
    this.lastSuccessfulTestFailoverTime,
    this.policyFriendlyName,
    this.policyId,
    this.primaryFabricFriendlyName,
    this.primaryFabricProvider,
    this.primaryProtectionContainerFriendlyName,
    this.protectableItemId,
    this.protectedItemType,
    this.protectionState,
    this.protectionStateDescription,
    this.providerSpecificDetails,
    this.recoveryContainerId,
    this.recoveryFabricFriendlyName,
    this.recoveryFabricId,
    this.recoveryProtectionContainerFriendlyName,
    this.recoveryServicesProviderId,
    this.replicationHealth,
    this.switchProviderState,
    this.switchProviderStateDescription,
    this.testFailoverState,
    this.testFailoverStateDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeLocation': ?activeLocation,
      'allowedOperations': ?allowedOperations,
      'currentScenario': ?currentScenario == null ? null : currentScenario!.toMap(),
      'eventCorrelationId': ?eventCorrelationId,
      'failoverHealth': ?failoverHealth,
      'failoverRecoveryPointId': ?failoverRecoveryPointId,
      'friendlyName': ?friendlyName,
      'healthErrors': ?healthErrors == null ? null : pulumi.Input.encodeList<HealthErrorResponse, Map<String, dynamic>>(healthErrors!, (value) => value.toMap()),
      'lastSuccessfulFailoverTime': ?lastSuccessfulFailoverTime,
      'lastSuccessfulTestFailoverTime': ?lastSuccessfulTestFailoverTime,
      'policyFriendlyName': ?policyFriendlyName,
      'policyId': ?policyId,
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryFabricProvider': ?primaryFabricProvider,
      'primaryProtectionContainerFriendlyName': ?primaryProtectionContainerFriendlyName,
      'protectableItemId': ?protectableItemId,
      'protectedItemType': ?protectedItemType,
      'protectionState': ?protectionState,
      'protectionStateDescription': ?protectionStateDescription,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : providerSpecificDetails!.toMap(),
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'recoveryProtectionContainerFriendlyName': ?recoveryProtectionContainerFriendlyName,
      'recoveryServicesProviderId': ?recoveryServicesProviderId,
      'replicationHealth': ?replicationHealth,
      'switchProviderState': ?switchProviderState,
      'switchProviderStateDescription': ?switchProviderStateDescription,
      'testFailoverState': ?testFailoverState,
      'testFailoverStateDescription': ?testFailoverStateDescription,
    };
  }

  factory ReplicationProtectedItemPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectedItemPropertiesResponse(
      activeLocation: map['activeLocation'] == null ? null : map['activeLocation'] as String,
      allowedOperations: map['allowedOperations'] == null ? null : (map['allowedOperations'] as List).cast<String>(),
      currentScenario: map['currentScenario'] == null ? null : CurrentScenarioDetailsResponse.fromMap((map['currentScenario'] as Map).cast<String, dynamic>()),
      eventCorrelationId: map['eventCorrelationId'] == null ? null : map['eventCorrelationId'] as String,
      failoverHealth: map['failoverHealth'] == null ? null : map['failoverHealth'] as String,
      failoverRecoveryPointId: map['failoverRecoveryPointId'] == null ? null : map['failoverRecoveryPointId'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthErrors: map['healthErrors'] == null ? null : pulumi.Input.decodeList<HealthErrorResponse>(map['healthErrors'], (value) => HealthErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastSuccessfulFailoverTime: map['lastSuccessfulFailoverTime'] == null ? null : map['lastSuccessfulFailoverTime'] as String,
      lastSuccessfulTestFailoverTime: map['lastSuccessfulTestFailoverTime'] == null ? null : map['lastSuccessfulTestFailoverTime'] as String,
      policyFriendlyName: map['policyFriendlyName'] == null ? null : map['policyFriendlyName'] as String,
      policyId: map['policyId'] == null ? null : map['policyId'] as String,
      primaryFabricFriendlyName: map['primaryFabricFriendlyName'] == null ? null : map['primaryFabricFriendlyName'] as String,
      primaryFabricProvider: map['primaryFabricProvider'] == null ? null : map['primaryFabricProvider'] as String,
      primaryProtectionContainerFriendlyName: map['primaryProtectionContainerFriendlyName'] == null ? null : map['primaryProtectionContainerFriendlyName'] as String,
      protectableItemId: map['protectableItemId'] == null ? null : map['protectableItemId'] as String,
      protectedItemType: map['protectedItemType'] == null ? null : map['protectedItemType'] as String,
      protectionState: map['protectionState'] == null ? null : map['protectionState'] as String,
      protectionStateDescription: map['protectionStateDescription'] == null ? null : map['protectionStateDescription'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : A2ACrossClusterMigrationReplicationDetailsResponse.fromMap((map['providerSpecificDetails'] as Map).cast<String, dynamic>()),
      recoveryContainerId: map['recoveryContainerId'] == null ? null : map['recoveryContainerId'] as String,
      recoveryFabricFriendlyName: map['recoveryFabricFriendlyName'] == null ? null : map['recoveryFabricFriendlyName'] as String,
      recoveryFabricId: map['recoveryFabricId'] == null ? null : map['recoveryFabricId'] as String,
      recoveryProtectionContainerFriendlyName: map['recoveryProtectionContainerFriendlyName'] == null ? null : map['recoveryProtectionContainerFriendlyName'] as String,
      recoveryServicesProviderId: map['recoveryServicesProviderId'] == null ? null : map['recoveryServicesProviderId'] as String,
      replicationHealth: map['replicationHealth'] == null ? null : map['replicationHealth'] as String,
      switchProviderState: map['switchProviderState'] == null ? null : map['switchProviderState'] as String,
      switchProviderStateDescription: map['switchProviderStateDescription'] == null ? null : map['switchProviderStateDescription'] as String,
      testFailoverState: map['testFailoverState'] == null ? null : map['testFailoverState'] as String,
      testFailoverStateDescription: map['testFailoverStateDescription'] == null ? null : map['testFailoverStateDescription'] as String,
    );
  }
}

