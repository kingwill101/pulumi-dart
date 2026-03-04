// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy.dart';
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_rollout.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload {
  /// Output only. Indicates that this revision has been successfully rolled out in this zone
  /// and new VMs will be assigned OS policies from this revision.
  ///
  /// For a given OS policy assignment, there is only one revision with a value
  /// of 'true' for this field.
  final pulumi.Input<bool>? baseline;

  /// Output only. Indicates that this revision deletes the OS policy assignment.
  final pulumi.Input<bool>? deleted;

  /// Optional. Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;

  /// Filters to select target VMs for an assignment.
  ///
  /// If more than one filter criteria is specified below, a VM will be selected
  /// if and only if it satisfies all of them.
  final pulumi.Input<
    V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
  >
  instanceFilter;

  /// Immutable. Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  final pulumi.Input<String>? name;

  /// Required. List of OS policies to be applied to the VMs.
  final pulumi.Input<
    List<
      V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy
    >
  >
  osPolicies;

  /// Output only. Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  final pulumi.Input<bool>? reconciling;

  /// Output only. The timestamp that the revision was created.
  final pulumi.Input<String>? revisionCreateTime;

  /// Output only. The assignment revision ID
  /// A new revision is committed whenever a rollout is triggered for a OS policy
  /// assignment
  final pulumi.Input<String>? revisionId;

  /// Message to configure the rollout at the zonal level for the OS policy
  /// assignment.
  final pulumi.Input<
    V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
  >
  rollout;

  /// Output only. OS policy assignment rollout state
  /// Possible values:
  /// ROLLOUT_STATE_UNSPECIFIED
  /// IN_PROGRESS
  /// CANCELLING
  /// CANCELLED
  /// SUCCEEDED
  final pulumi.Input<String>? rolloutState;

  /// Output only. Server generated unique id for the OS policy assignment resource.
  final pulumi.Input<String>? uid;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload].
  /// [baseline] Output only. Indicates that this revision has been successfully rolled out in this zone
  /// [deleted] Output only. Indicates that this revision deletes the OS policy assignment.
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [instanceFilter] Filters to select target VMs for an assignment.
  /// [name] Immutable. Identifier. In form of
  /// [osPolicies] Required. List of OS policies to be applied to the VMs.
  /// [reconciling] Output only. Set to true, if the there are ongoing changes being applied by the
  /// [revisionCreateTime] Output only. The timestamp that the revision was created.
  /// [revisionId] Output only. The assignment revision ID
  /// [rollout] Message to configure the rollout at the zonal level for the OS policy
  /// [rolloutState] Output only. OS policy assignment rollout state
  /// [uid] Output only. Server generated unique id for the OS policy assignment resource.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.baseline,
    this.deleted,
    this.description,
    required this.instanceFilter,
    this.name,
    required this.osPolicies,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    required this.rollout,
    this.rolloutState,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': ?baseline,
      'deleted': ?deleted,
      'description': ?description,
      'instanceFilter':
          pulumi.Input.mapInputValue<
            V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter,
            Map<String, dynamic>
          >(instanceFilter, (value) => value.toMap()),
      'name': ?name,
      'osPolicies':
          pulumi.Input.mapInputValue<
            List<
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy
            >,
            List<Map<String, dynamic>>
          >(
            osPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'reconciling': ?reconciling,
      'revisionCreateTime': ?revisionCreateTime,
      'revisionId': ?revisionId,
      'rollout':
          pulumi.Input.mapInputValue<
            V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout,
            Map<String, dynamic>
          >(rollout, (value) => value.toMap()),
      'rolloutState': ?rolloutState,
      'uid': ?uid,
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload(
      baseline: (() {
        final guardedValue = map['baseline'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deleted: (() {
        final guardedValue = map['deleted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceFilter: pulumi.Input.fromValue(
        V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter.fromMap(
          (map['instanceFilter']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy
        >(
          map['osPolicies']!,
          (value) =>
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      reconciling: (() {
        final guardedValue = map['reconciling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      revisionCreateTime: (() {
        final guardedValue = map['revisionCreateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revisionId: (() {
        final guardedValue = map['revisionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rollout: pulumi.Input.fromValue(
        V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout.fromMap(
          (map['rollout']! as Map).cast<String, dynamic>(),
        ),
      ),
      rolloutState: (() {
        final guardedValue = map['rolloutState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
