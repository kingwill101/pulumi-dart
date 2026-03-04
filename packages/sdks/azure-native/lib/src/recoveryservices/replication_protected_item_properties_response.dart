// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_across_cluster_migration_replication_details_response.dart';
import 'current_scenario_details_response.dart';
import 'health_error_response.dart';

/// Replication protected item custom data details.
class ReplicationProtectedItemPropertiesResponse {
  /// The Current active location of the PE.
  final pulumi.Input<String>? activeLocation;

  /// The allowed operations on the Replication protected item.
  final pulumi.Input<List<String>>? allowedOperations;

  /// The current scenario.
  final pulumi.Input<CurrentScenarioDetailsResponse>? currentScenario;

  /// The correlation Id for events associated with this protected item.
  final pulumi.Input<String>? eventCorrelationId;

  /// The consolidated failover health for the VM.
  final pulumi.Input<String>? failoverHealth;

  /// The recovery point ARM Id to which the Vm was failed over.
  final pulumi.Input<String>? failoverRecoveryPointId;

  /// The name.
  final pulumi.Input<String>? friendlyName;

  /// List of health errors.
  final pulumi.Input<List<HealthErrorResponse>>? healthErrors;

  /// The Last successful failover time.
  final pulumi.Input<String>? lastSuccessfulFailoverTime;

  /// The Last successful test failover time.
  final pulumi.Input<String>? lastSuccessfulTestFailoverTime;

  /// The name of Policy governing this PE.
  final pulumi.Input<String>? policyFriendlyName;

  /// The ID of Policy governing this PE.
  final pulumi.Input<String>? policyId;

  /// The friendly name of the primary fabric.
  final pulumi.Input<String>? primaryFabricFriendlyName;

  /// The fabric provider of the primary fabric.
  final pulumi.Input<String>? primaryFabricProvider;

  /// The name of primary protection container friendly name.
  final pulumi.Input<String>? primaryProtectionContainerFriendlyName;

  /// The protected item ARM Id.
  final pulumi.Input<String>? protectableItemId;

  /// The type of protected item type.
  final pulumi.Input<String>? protectedItemType;

  /// The protection status.
  final pulumi.Input<String>? protectionState;

  /// The protection state description.
  final pulumi.Input<String>? protectionStateDescription;

  /// The Replication provider custom settings.
  final pulumi.Input<A2ACrossClusterMigrationReplicationDetailsResponse>?
  providerSpecificDetails;

  /// The recovery container Id.
  final pulumi.Input<String>? recoveryContainerId;

  /// The friendly name of recovery fabric.
  final pulumi.Input<String>? recoveryFabricFriendlyName;

  /// The Arm Id of recovery fabric.
  final pulumi.Input<String>? recoveryFabricId;

  /// The name of recovery container friendly name.
  final pulumi.Input<String>? recoveryProtectionContainerFriendlyName;

  /// The recovery provider ARM Id.
  final pulumi.Input<String>? recoveryServicesProviderId;

  /// The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration.
  final pulumi.Input<String>? replicationHealth;

  /// The switch provider state.
  final pulumi.Input<String>? switchProviderState;

  /// The switch provider state description.
  final pulumi.Input<String>? switchProviderStateDescription;

  /// The Test failover state.
  final pulumi.Input<String>? testFailoverState;

  /// The Test failover state description.
  final pulumi.Input<String>? testFailoverStateDescription;

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
      'currentScenario':
          ?pulumi.Input.mapOptionalInputValue<
            CurrentScenarioDetailsResponse,
            Map<String, dynamic>
          >(currentScenario, (value) => value.toMap()),
      'eventCorrelationId': ?eventCorrelationId,
      'failoverHealth': ?failoverHealth,
      'failoverRecoveryPointId': ?failoverRecoveryPointId,
      'friendlyName': ?friendlyName,
      'healthErrors':
          ?pulumi.Input.mapOptionalInputValue<
            List<HealthErrorResponse>,
            List<Map<String, dynamic>>
          >(
            healthErrors,
            (value) =>
                pulumi.Input.encodeList<
                  HealthErrorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'lastSuccessfulFailoverTime': ?lastSuccessfulFailoverTime,
      'lastSuccessfulTestFailoverTime': ?lastSuccessfulTestFailoverTime,
      'policyFriendlyName': ?policyFriendlyName,
      'policyId': ?policyId,
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryFabricProvider': ?primaryFabricProvider,
      'primaryProtectionContainerFriendlyName':
          ?primaryProtectionContainerFriendlyName,
      'protectableItemId': ?protectableItemId,
      'protectedItemType': ?protectedItemType,
      'protectionState': ?protectionState,
      'protectionStateDescription': ?protectionStateDescription,
      'providerSpecificDetails':
          ?pulumi.Input.mapOptionalInputValue<
            A2ACrossClusterMigrationReplicationDetailsResponse,
            Map<String, dynamic>
          >(providerSpecificDetails, (value) => value.toMap()),
      'recoveryContainerId': ?recoveryContainerId,
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'recoveryProtectionContainerFriendlyName':
          ?recoveryProtectionContainerFriendlyName,
      'recoveryServicesProviderId': ?recoveryServicesProviderId,
      'replicationHealth': ?replicationHealth,
      'switchProviderState': ?switchProviderState,
      'switchProviderStateDescription': ?switchProviderStateDescription,
      'testFailoverState': ?testFailoverState,
      'testFailoverStateDescription': ?testFailoverStateDescription,
    };
  }

  factory ReplicationProtectedItemPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicationProtectedItemPropertiesResponse(
      activeLocation: (() {
        final guardedValue = map['activeLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allowedOperations: (() {
        final guardedValue = map['allowedOperations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      currentScenario: (() {
        final guardedValue = map['currentScenario'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CurrentScenarioDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eventCorrelationId: (() {
        final guardedValue = map['eventCorrelationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverHealth: (() {
        final guardedValue = map['failoverHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverRecoveryPointId: (() {
        final guardedValue = map['failoverRecoveryPointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      friendlyName: (() {
        final guardedValue = map['friendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthErrors: (() {
        final guardedValue = map['healthErrors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HealthErrorResponse>(
            guardedValue,
            (value) => HealthErrorResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      lastSuccessfulFailoverTime: (() {
        final guardedValue = map['lastSuccessfulFailoverTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastSuccessfulTestFailoverTime: (() {
        final guardedValue = map['lastSuccessfulTestFailoverTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyFriendlyName: (() {
        final guardedValue = map['policyFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFabricFriendlyName: (() {
        final guardedValue = map['primaryFabricFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryFabricProvider: (() {
        final guardedValue = map['primaryFabricProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryProtectionContainerFriendlyName: (() {
        final guardedValue = map['primaryProtectionContainerFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectableItemId: (() {
        final guardedValue = map['protectableItemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectedItemType: (() {
        final guardedValue = map['protectedItemType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionState: (() {
        final guardedValue = map['protectionState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectionStateDescription: (() {
        final guardedValue = map['protectionStateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerSpecificDetails: (() {
        final guardedValue = map['providerSpecificDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          A2ACrossClusterMigrationReplicationDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recoveryContainerId: (() {
        final guardedValue = map['recoveryContainerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryFabricFriendlyName: (() {
        final guardedValue = map['recoveryFabricFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryFabricId: (() {
        final guardedValue = map['recoveryFabricId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryProtectionContainerFriendlyName: (() {
        final guardedValue = map['recoveryProtectionContainerFriendlyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryServicesProviderId: (() {
        final guardedValue = map['recoveryServicesProviderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationHealth: (() {
        final guardedValue = map['replicationHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      switchProviderState: (() {
        final guardedValue = map['switchProviderState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      switchProviderStateDescription: (() {
        final guardedValue = map['switchProviderStateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      testFailoverState: (() {
        final guardedValue = map['testFailoverState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      testFailoverStateDescription: (() {
        final guardedValue = map['testFailoverStateDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
