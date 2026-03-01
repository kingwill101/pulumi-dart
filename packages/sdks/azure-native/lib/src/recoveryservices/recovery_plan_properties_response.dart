// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'current_scenario_details_response.dart';
import 'recovery_plan_a2_adetails_response.dart';
import 'recovery_plan_group_response.dart';

/// Recovery plan properties.
class RecoveryPlanPropertiesResponse {
  /// The list of allowed operations.
  final List<String>? allowedOperations;
  /// The current scenario details.
  final CurrentScenarioDetailsResponse? currentScenario;
  /// The recovery plan status.
  final String? currentScenarioStatus;
  /// The recovery plan status description.
  final String? currentScenarioStatusDescription;
  /// The failover deployment model.
  final String? failoverDeploymentModel;
  /// The friendly name.
  final String? friendlyName;
  /// The recovery plan groups.
  final List<RecoveryPlanGroupResponse>? groups;
  /// The start time of the last planned failover.
  final String? lastPlannedFailoverTime;
  /// The start time of the last test failover.
  final String? lastTestFailoverTime;
  /// The start time of the last unplanned failover.
  final String? lastUnplannedFailoverTime;
  /// The primary fabric friendly name.
  final String? primaryFabricFriendlyName;
  /// The primary fabric Id.
  final String? primaryFabricId;
  /// The provider id and provider specific details.
  final List<RecoveryPlanA2ADetailsResponse>? providerSpecificDetails;
  /// The recovery fabric friendly name.
  final String? recoveryFabricFriendlyName;
  /// The recovery fabric Id.
  final String? recoveryFabricId;
  /// The list of replication providers.
  final List<String>? replicationProviders;

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
  RecoveryPlanPropertiesResponse({
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
      'currentScenario': ?currentScenario == null ? null : currentScenario!.toMap(),
      'currentScenarioStatus': ?currentScenarioStatus,
      'currentScenarioStatusDescription': ?currentScenarioStatusDescription,
      'failoverDeploymentModel': ?failoverDeploymentModel,
      'friendlyName': ?friendlyName,
      'groups': ?groups == null ? null : pulumi.Input.encodeList<RecoveryPlanGroupResponse, Map<String, dynamic>>(groups!, (value) => value.toMap()),
      'lastPlannedFailoverTime': ?lastPlannedFailoverTime,
      'lastTestFailoverTime': ?lastTestFailoverTime,
      'lastUnplannedFailoverTime': ?lastUnplannedFailoverTime,
      'primaryFabricFriendlyName': ?primaryFabricFriendlyName,
      'primaryFabricId': ?primaryFabricId,
      'providerSpecificDetails': ?providerSpecificDetails == null ? null : pulumi.Input.encodeList<RecoveryPlanA2ADetailsResponse, Map<String, dynamic>>(providerSpecificDetails!, (value) => value.toMap()),
      'recoveryFabricFriendlyName': ?recoveryFabricFriendlyName,
      'recoveryFabricId': ?recoveryFabricId,
      'replicationProviders': ?replicationProviders,
    };
  }

  factory RecoveryPlanPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanPropertiesResponse(
      allowedOperations: map['allowedOperations'] == null ? null : (map['allowedOperations'] as List).cast<String>(),
      currentScenario: map['currentScenario'] == null ? null : CurrentScenarioDetailsResponse.fromMap((map['currentScenario'] as Map).cast<String, dynamic>()),
      currentScenarioStatus: map['currentScenarioStatus'] == null ? null : map['currentScenarioStatus'] as String,
      currentScenarioStatusDescription: map['currentScenarioStatusDescription'] == null ? null : map['currentScenarioStatusDescription'] as String,
      failoverDeploymentModel: map['failoverDeploymentModel'] == null ? null : map['failoverDeploymentModel'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      groups: map['groups'] == null ? null : pulumi.Input.decodeList<RecoveryPlanGroupResponse>(map['groups'], (value) => RecoveryPlanGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      lastPlannedFailoverTime: map['lastPlannedFailoverTime'] == null ? null : map['lastPlannedFailoverTime'] as String,
      lastTestFailoverTime: map['lastTestFailoverTime'] == null ? null : map['lastTestFailoverTime'] as String,
      lastUnplannedFailoverTime: map['lastUnplannedFailoverTime'] == null ? null : map['lastUnplannedFailoverTime'] as String,
      primaryFabricFriendlyName: map['primaryFabricFriendlyName'] == null ? null : map['primaryFabricFriendlyName'] as String,
      primaryFabricId: map['primaryFabricId'] == null ? null : map['primaryFabricId'] as String,
      providerSpecificDetails: map['providerSpecificDetails'] == null ? null : pulumi.Input.decodeList<RecoveryPlanA2ADetailsResponse>(map['providerSpecificDetails'], (value) => RecoveryPlanA2ADetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      recoveryFabricFriendlyName: map['recoveryFabricFriendlyName'] == null ? null : map['recoveryFabricFriendlyName'] as String,
      recoveryFabricId: map['recoveryFabricId'] == null ? null : map['recoveryFabricId'] as String,
      replicationProviders: map['replicationProviders'] == null ? null : (map['replicationProviders'] as List).cast<String>(),
    );
  }
}

