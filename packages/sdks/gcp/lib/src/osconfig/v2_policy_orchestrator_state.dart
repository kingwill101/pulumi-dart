// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource.dart';
import 'v2_policy_orchestrator_orchestration_scope.dart';
import 'v2_policy_orchestrator_orchestration_state.dart';

/// Input properties used for looking up and filtering V2PolicyOrchestrator resources.
class V2PolicyOrchestratorState {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String>? action;

  /// Output only. Timestamp when the policy orchestrator resource was created.
  final pulumi.Input<String>? createTime;

  /// Optional. Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Immutable. Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  final pulumi.Input<String>? name;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResource>?
  orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestrationScope>?
  orchestrationScope;

  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorOrchestrationState>>?
  orchestrationStates;

  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String>? policyOrchestratorId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Output only. Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  final pulumi.Input<bool>? reconciling;

  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Output only. Timestamp when the policy orchestrator resource was last modified.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [V2PolicyOrchestratorState].
  /// [action] Required. Action to be done by the orchestrator in
  /// [createTime] Output only. Timestamp when the policy orchestrator resource was created.
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional. Labels as key value pairs
  /// [name] Immutable. Identifier. In form of
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [orchestrationStates] Describes the state of the orchestration process.
  /// [policyOrchestratorId] Required. The logical identifier of the policy orchestrator, with the following
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Set to true, if the there are ongoing changes being applied by the
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// [updateTime] Output only. Timestamp when the policy orchestrator resource was last modified.
  V2PolicyOrchestratorState({
    this.action,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.orchestratedResource,
    this.orchestrationScope,
    this.orchestrationStates,
    this.policyOrchestratorId,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'orchestratedResource':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorOrchestratedResource,
            Map<String, dynamic>
          >(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorOrchestrationScope,
            Map<String, dynamic>
          >(orchestrationScope, (value) => value.toMap()),
      'orchestrationStates':
          ?pulumi.Input.mapOptionalInputValue<
            List<V2PolicyOrchestratorOrchestrationState>,
            List<Map<String, dynamic>>
          >(
            orchestrationStates,
            (value) =>
                pulumi.Input.encodeList<
                  V2PolicyOrchestratorOrchestrationState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'policyOrchestratorId': ?policyOrchestratorId,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory V2PolicyOrchestratorState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorState(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      orchestratedResource: (() {
        final guardedValue = map['orchestratedResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorOrchestratedResource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      orchestrationScope: (() {
        final guardedValue = map['orchestrationScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorOrchestrationScope.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      orchestrationStates: (() {
        final guardedValue = map['orchestrationStates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<V2PolicyOrchestratorOrchestrationState>(
            guardedValue,
            (value) => V2PolicyOrchestratorOrchestrationState.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      policyOrchestratorId: (() {
        final guardedValue = map['policyOrchestratorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      reconciling: (() {
        final guardedValue = map['reconciling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
