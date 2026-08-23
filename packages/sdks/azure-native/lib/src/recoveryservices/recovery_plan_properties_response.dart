// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'current_scenario_details_response.dart';
import 'recovery_plan_a2_adetails_response.dart';
import 'recovery_plan_group_response.dart';

/// Recovery plan properties.
class RecoveryPlanPropertiesResponse {
  /// The list of allowed operations.
  final pulumi.Input<List<String>>? allowedOperations;
  /// The current scenario details.
  final pulumi.Input<CurrentScenarioDetailsResponse>? currentScenario;
  /// The recovery plan status.
  final pulumi.Input<String>? currentScenarioStatus;
  /// The recovery plan status description.
  final pulumi.Input<String>? currentScenarioStatusDescription;
  /// The failover deployment model.
  final pulumi.Input<String>? failoverDeploymentModel;
  /// The friendly name.
  final pulumi.Input<String>? friendlyName;
  /// The recovery plan groups.
  final pulumi.Input<List<RecoveryPlanGroupResponse>>? groups;
  /// The start time of the last planned failover.
  final pulumi.Input<String>? lastPlannedFailoverTime;
  /// The start time of the last test failover.
  final pulumi.Input<String>? lastTestFailoverTime;
  /// The start time of the last unplanned failover.
  final pulumi.Input<String>? lastUnplannedFailoverTime;
  /// The primary fabric friendly name.
  final pulumi.Input<String>? primaryFabricFriendlyName;
  /// The primary fabric Id.
  final pulumi.Input<String>? primaryFabricId;
  /// The provider id and provider specific details.
  final pulumi.Input<List<RecoveryPlanA2ADetailsResponse>>? providerSpecificDetails;
  /// The recovery fabric friendly name.
  final pulumi.Input<String>? recoveryFabricFriendlyName;
  /// The recovery fabric Id.
  final pulumi.Input<String>? recoveryFabricId;
  /// The list of replication providers.
  final pulumi.Input<List<String>>? replicationProviders;

  /// Creates a new [RecoveryPlanPropertiesResponse].
  /// [allowedOperations] The list of allowed operations.
  /// [currentScenario] The current scenario details.
  /// [currentScenarioStatus] The recovery plan status.
  /// [currentScenarioStatusDescription] The recovery plan status description.
  /// [failoverDeploymentModel] The failover deployment model.
  /// [friendlyName] The friendly name.
  /// [groups] The recovery plan groups.
  /// [lastPlannedFailoverTime] The start time of the last planned failover.
  /// [lastTestFailoverTime] The start time of the last test failover.
  /// [lastUnplannedFailoverTime] The start time of the last unplanned failover.
  /// [primaryFabricFriendlyName] The primary fabric friendly name.
  /// [primaryFabricId] The primary fabric Id.
  /// [providerSpecificDetails] The provider id and provider specific details.
  /// [recoveryFabricFriendlyName] The recovery fabric friendly name.
  /// [recoveryFabricId] The recovery fabric Id.
  /// [replicationProviders] The list of replication providers.
  const RecoveryPlanPropertiesResponse({
    this.allowedOperations,
    this.currentScenario,
    this.currentScenarioStatus,
    this.currentScenarioStatusDescription,
    this.failoverDeploymentModel,
    this.friendlyName,
    this.groups,
    this.lastPlannedFailoverTime,
    this.lastTestFailoverTime,
    this.lastUnplannedFailoverTime,
    this.primaryFabricFriendlyName,
    this.primaryFabricId,
    this.providerSpecificDetails,
    this.recoveryFabricFriendlyName,
    this.recoveryFabricId,
    this.replicationProviders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedOperations': ?allowedOperations,
      'currentScenario': ?pulumi.Input.mapOptionalInputValue<CurrentScenarioDetailsResponse, Map<String, dynamic>>(currentScenario, (value) => value.toMap()),
      'currentScenarioStatus': ?currentScenarioStatus,
      'currentScenarioStatusDescription': ?currentScenarioStatusDescription,
      'failoverDeploymentModel': ?failoverDeploymentModel,
      'friendlyName': ?friendlyName,
      'groups': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanGroupResponse>, List<Map<String, dynamic>>>(groups, (value) => pulumi.Input.encodeList<RecoveryPlanGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastPlannedFailoverTime': ?lastPlannedFailoverTime,
      'lastTestFailoverTime': ?lastTestFailoverTime,
      'lastUnplannedFailoverTime': ?lastUnplannedFailoverTime,
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryFabricId': ?primaryFabricId,
      'providerSpecificDetails': ?pulumi.Input.mapOptionalInputValue<List<RecoveryPlanA2ADetailsResponse>, List<Map<String, dynamic>>>(providerSpecificDetails, (value) => pulumi.Input.encodeList<RecoveryPlanA2ADetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'replicationProviders': ?replicationProviders,
    };
  }

  factory RecoveryPlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanPropertiesResponse(
      allowedOperations: (() { final guardedValue = map['allowedOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      currentScenario: (() { final guardedValue = map['currentScenario']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CurrentScenarioDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentScenarioStatus: (() { final guardedValue = map['currentScenarioStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentScenarioStatusDescription: (() { final guardedValue = map['currentScenarioStatusDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverDeploymentModel: (() { final guardedValue = map['failoverDeploymentModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanGroupResponse>(guardedValue, (value) => RecoveryPlanGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastPlannedFailoverTime: (() { final guardedValue = map['lastPlannedFailoverTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastTestFailoverTime: (() { final guardedValue = map['lastTestFailoverTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUnplannedFailoverTime: (() { final guardedValue = map['lastUnplannedFailoverTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryFabricFriendlyName: (() { final guardedValue = map['primaryFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryFabricId: (() { final guardedValue = map['primaryFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerSpecificDetails: (() { final guardedValue = map['providerSpecificDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RecoveryPlanA2ADetailsResponse>(guardedValue, (value) => RecoveryPlanA2ADetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recoveryFabricFriendlyName: (() { final guardedValue = map['recoveryFabricFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricId: (() { final guardedValue = map['recoveryFabricId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationProviders: (() { final guardedValue = map['replicationProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
