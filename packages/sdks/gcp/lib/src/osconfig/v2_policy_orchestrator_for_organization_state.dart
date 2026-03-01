// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_scope.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_state.dart';

/// Input properties used for looking up and filtering V2PolicyOrchestratorForOrganization resources.
class V2PolicyOrchestratorForOrganizationState {
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
  /// Output only. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
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
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResource>? orchestratedResource;
  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestrationScope>? orchestrationScope;
  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForOrganizationOrchestrationState>>? orchestrationStates;
  /// Part of `parent`. Required. The parent resource name in the form of:
  /// * `organizations/{organization_id}/locations/global`
  /// * `folders/{folder_id}/locations/global`
  /// * `projects/{project_id_or_number}/locations/global`
  final pulumi.Input<String>? organizationId;
  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String>? policyOrchestratorId;
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

  /// Creates a new [V2PolicyOrchestratorForOrganizationState].
  /// [action] Required. Action to be done by the orchestrator in
  /// [createTime] Output only. Timestamp when the policy orchestrator resource was created.
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] Output only. This checksum is computed by the server based on the value of other
  /// [labels] Optional. Labels as key value pairs
  /// [name] Immutable. Identifier. In form of
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [orchestrationStates] Describes the state of the orchestration process.
  /// [organizationId] Part of `parent`. Required. The parent resource name in the form of:
  /// [policyOrchestratorId] Required. The logical identifier of the policy orchestrator, with the following
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Output only. Set to true, if the there are ongoing changes being applied by the
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// [updateTime] Output only. Timestamp when the policy orchestrator resource was last modified.
  V2PolicyOrchestratorForOrganizationState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? etag,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<V2PolicyOrchestratorForOrganizationOrchestratedResource>? orchestratedResource,
    pulumi.Output<V2PolicyOrchestratorForOrganizationOrchestrationScope>? orchestrationScope,
    pulumi.Output<List<V2PolicyOrchestratorForOrganizationOrchestrationState>>? orchestrationStates,
    pulumi.Output<String>? organizationId,
    pulumi.Output<String>? policyOrchestratorId,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      orchestratedResource = pulumi.Input.asOptionalInput<V2PolicyOrchestratorForOrganizationOrchestratedResource>(orchestratedResource),
      orchestrationScope = pulumi.Input.asOptionalInput<V2PolicyOrchestratorForOrganizationOrchestrationScope>(orchestrationScope),
      orchestrationStates = pulumi.Input.asOptionalInput<List<V2PolicyOrchestratorForOrganizationOrchestrationState>>(orchestrationStates),
      organizationId = pulumi.Input.asOptionalInput<String>(organizationId),
      policyOrchestratorId = pulumi.Input.asOptionalInput<String>(policyOrchestratorId),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'orchestratedResource': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResource, Map<String, dynamic>>(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestrationScope, Map<String, dynamic>>(orchestrationScope, (value) => value.toMap()),
      'orchestrationStates': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForOrganizationOrchestrationState>, List<Map<String, dynamic>>>(orchestrationStates, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForOrganizationOrchestrationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'organizationId': ?organizationId,
      'policyOrchestratorId': ?policyOrchestratorId,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory V2PolicyOrchestratorForOrganizationState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orchestratedResource: map['orchestratedResource'] == null ? null : pulumi.Output.create<V2PolicyOrchestratorForOrganizationOrchestratedResource>(V2PolicyOrchestratorForOrganizationOrchestratedResource.fromMap((map['orchestratedResource'] as Map).cast<String, dynamic>())),
      orchestrationScope: map['orchestrationScope'] == null ? null : pulumi.Output.create<V2PolicyOrchestratorForOrganizationOrchestrationScope>(V2PolicyOrchestratorForOrganizationOrchestrationScope.fromMap((map['orchestrationScope'] as Map).cast<String, dynamic>())),
      orchestrationStates: map['orchestrationStates'] == null ? null : pulumi.Output.create<List<V2PolicyOrchestratorForOrganizationOrchestrationState>>(pulumi.Input.decodeList<V2PolicyOrchestratorForOrganizationOrchestrationState>(map['orchestrationStates'], (value) => V2PolicyOrchestratorForOrganizationOrchestrationState.fromMap((value as Map).cast<String, dynamic>()))),
      organizationId: map['organizationId'] == null ? null : pulumi.Output.create<String>(map['organizationId'] as String),
      policyOrchestratorId: map['policyOrchestratorId'] == null ? null : pulumi.Output.create<String>(map['policyOrchestratorId'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

