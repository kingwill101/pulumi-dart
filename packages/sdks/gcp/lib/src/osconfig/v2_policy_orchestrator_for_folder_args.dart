// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestrated_resource.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_scope.dart';

/// {@template pulumi_osconfig_v2_policy_orchestrator_for_folder_v2_policy_orchestrator_for_folder_args_doc}
/// The set of arguments for V2PolicyOrchestratorForFolder.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v2_policy_orchestrator_for_folder_v2_policy_orchestrator_for_folder_args_doc}
class V2PolicyOrchestratorForFolderArgs {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String> action;
  /// Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;
  /// The parent resource name in the form of `folders/{folder_id}/locations/global`.
  final pulumi.Input<String> folderId;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestratedResource> orchestratedResource;
  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForFolderOrchestrationScope>? orchestrationScope;
  /// The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String> policyOrchestratorId;
  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Creates a new [V2PolicyOrchestratorForFolderArgs].
  /// [action] Action to be done by the orchestrator in
  /// [description] Freeform text describing the purpose of the resource.
  /// [folderId] The parent resource name in the form of `folders/{folder_id}/locations/global`.
  /// [labels] Labels as key value pairs
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [policyOrchestratorId] The logical identifier of the policy orchestrator, with the following
  /// [state] State of the orchestrator. Can be updated to change orchestrator behaviour.
  V2PolicyOrchestratorForFolderArgs({
    required pulumi.Output<String> action,
    pulumi.Output<String>? description,
    required pulumi.Output<String> folderId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<V2PolicyOrchestratorForFolderOrchestratedResource> orchestratedResource,
    pulumi.Output<V2PolicyOrchestratorForFolderOrchestrationScope>? orchestrationScope,
    required pulumi.Output<String> policyOrchestratorId,
    pulumi.Output<String>? state,
  }) :
      action = pulumi.Input.asInput<String>(action),
      description = pulumi.Input.asOptionalInput<String>(description),
      folderId = pulumi.Input.asInput<String>(folderId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      orchestratedResource = pulumi.Input.asInput<V2PolicyOrchestratorForFolderOrchestratedResource>(orchestratedResource),
      orchestrationScope = pulumi.Input.asOptionalInput<V2PolicyOrchestratorForFolderOrchestrationScope>(orchestrationScope),
      policyOrchestratorId = pulumi.Input.asInput<String>(policyOrchestratorId),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'folderId': folderId,
      'labels': ?labels,
      'orchestratedResource': pulumi.Input.mapInputValue<V2PolicyOrchestratorForFolderOrchestratedResource, Map<String, dynamic>>(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForFolderOrchestrationScope, Map<String, dynamic>>(orchestrationScope, (value) => value.toMap()),
      'policyOrchestratorId': policyOrchestratorId,
      'state': ?state,
    };
  }

  factory V2PolicyOrchestratorForFolderArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderArgs(
      action: pulumi.Output.create<String>(map['action'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      folderId: pulumi.Output.create<String>(map['folderId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      orchestratedResource: pulumi.Output.create<V2PolicyOrchestratorForFolderOrchestratedResource>(V2PolicyOrchestratorForFolderOrchestratedResource.fromMap((map['orchestratedResource'] as Map).cast<String, dynamic>())),
      orchestrationScope: map['orchestrationScope'] == null ? null : pulumi.Output.create<V2PolicyOrchestratorForFolderOrchestrationScope>(V2PolicyOrchestratorForFolderOrchestrationScope.fromMap((map['orchestrationScope'] as Map).cast<String, dynamic>())),
      policyOrchestratorId: pulumi.Output.create<String>(map['policyOrchestratorId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

