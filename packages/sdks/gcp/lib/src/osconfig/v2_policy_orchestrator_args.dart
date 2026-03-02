// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource.dart';
import 'v2_policy_orchestrator_orchestration_scope.dart';

/// {@template pulumi_osconfig_v2_policy_orchestrator_v2_policy_orchestrator_args_doc}
/// The set of arguments for V2PolicyOrchestrator.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v2_policy_orchestrator_v2_policy_orchestrator_args_doc}
class V2PolicyOrchestratorArgs {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String> action;
  /// Optional. Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResource> orchestratedResource;
  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestrationScope>? orchestrationScope;
  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String> policyOrchestratorId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Creates a new [V2PolicyOrchestratorArgs].
  /// [action] Required. Action to be done by the orchestrator in
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [labels] Optional. Labels as key value pairs
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [policyOrchestratorId] Required. The logical identifier of the policy orchestrator, with the following
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  V2PolicyOrchestratorArgs({
    required this.action,
    this.description,
    this.labels,
    required this.orchestratedResource,
    this.orchestrationScope,
    required this.policyOrchestratorId,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'labels': ?labels,
      'orchestratedResource': pulumi.Input.mapInputValue<V2PolicyOrchestratorOrchestratedResource, Map<String, dynamic>>(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorOrchestrationScope, Map<String, dynamic>>(orchestrationScope, (value) => value.toMap()),
      'policyOrchestratorId': policyOrchestratorId,
      'project': ?project,
      'state': ?state,
    };
  }

  factory V2PolicyOrchestratorArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorArgs(
      action: (map['action'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      orchestratedResource: (V2PolicyOrchestratorOrchestratedResource.fromMap((map['orchestratedResource'] as Map).cast<String, dynamic>())).input(),
      orchestrationScope: map['orchestrationScope'] == null ? null : (V2PolicyOrchestratorOrchestrationScope.fromMap((map['orchestrationScope']! as Map).cast<String, dynamic>())).input(),
      policyOrchestratorId: (map['policyOrchestratorId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

