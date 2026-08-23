// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestrated_resource.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_scope.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_state.dart';

/// Input properties used for looking up and filtering V2PolicyOrchestratorForFolder resources.
class V2PolicyOrchestratorForFolderState {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestrationScope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String>? action;
  /// Timestamp when the policy orchestrator resource was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The parent resource name in the form of `folders/{folder_id}/locations/global`.
  final pulumi.Input<String>? folderId;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  final pulumi.Input<String>? name;
  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestratedResource>? orchestratedResource;
  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestrationScope>? orchestrationScope;
  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorForFolderOrchestrationState>>? orchestrationStates;
  /// The logical identifier of the policy orchestrator, with the following
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
  /// Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  final pulumi.Input<bool>? reconciling;
  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;
  /// Timestamp when the policy orchestrator resource was last modified.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [V2PolicyOrchestratorForFolderState].
  /// [action] Action to be done by the orchestrator in
  /// [createTime] Timestamp when the policy orchestrator resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Freeform text describing the purpose of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [folderId] The parent resource name in the form of `folders/{folder_id}/locations/global`.
  /// [labels] Labels as key value pairs
  /// [name] Identifier. In form of
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [orchestrationStates] Describes the state of the orchestration process.
  /// [policyOrchestratorId] The logical identifier of the policy orchestrator, with the following
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Set to true, if the there are ongoing changes being applied by the
  /// [state] State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// [updateTime] Timestamp when the policy orchestrator resource was last modified.
  const V2PolicyOrchestratorForFolderState({
    this.action,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.etag,
    this.folderId,
    this.labels,
    this.name,
    this.orchestratedResource,
    this.orchestrationScope,
    this.orchestrationStates,
    this.policyOrchestratorId,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'etag': ?etag,
      'folderId': ?folderId,
      'labels': ?labels,
      'name': ?name,
      'orchestratedResource': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestratedResource, Map<String, dynamic>>(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestrationScope, Map<String, dynamic>>(orchestrationScope, (value) => value.toMap()),
      'orchestrationStates': ?pulumi.Input.mapOptionalInputValue<List<V2PolicyOrchestratorForFolderOrchestrationState>, List<Map<String, dynamic>>>(orchestrationStates, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyOrchestratorId': ?policyOrchestratorId,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory V2PolicyOrchestratorForFolderState.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orchestratedResource: (() { final guardedValue = map['orchestratedResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForFolderOrchestratedResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orchestrationScope: (() { final guardedValue = map['orchestrationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForFolderOrchestrationScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      orchestrationStates: (() { final guardedValue = map['orchestrationStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationState>(guardedValue, (value) => V2PolicyOrchestratorForFolderOrchestrationState.fromMap((value as Map).cast<String, dynamic>()))); })(),
      policyOrchestratorId: (() { final guardedValue = map['policyOrchestratorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
