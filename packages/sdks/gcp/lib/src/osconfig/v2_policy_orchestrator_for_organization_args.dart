// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_organization_orchestrated_resource.dart';
import 'v2_policy_orchestrator_for_organization_orchestration_scope.dart';

/// {@template pulumi_osconfig_v2_policy_orchestrator_for_organization_v2_policy_orchestrator_for_organization_args_doc}
/// The set of arguments for V2PolicyOrchestratorForOrganization.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v2_policy_orchestrator_for_organization_v2_policy_orchestrator_for_organization_args_doc}
class V2PolicyOrchestratorForOrganizationArgs {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestrationScope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional. Freeform text describing the purpose of the resource.
  final pulumi.Input<String?>? description;
  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestratedResource> orchestratedResource;
  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorForOrganizationOrchestrationScope?>? orchestrationScope;
  /// Part of `parent`. Required. The parent resource name in the form of:
  /// * `organizations/{organization_id}/locations/global`
  /// * `folders/{folder_id}/locations/global`
  /// * `projects/{project_id_or_number}/locations/global`
  final pulumi.Input<String> organizationId;
  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String> policyOrchestratorId;
  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String?>? state;

  /// Creates a new [V2PolicyOrchestratorForOrganizationArgs].
  /// [action] Required. Action to be done by the orchestrator in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [labels] Optional. Labels as key value pairs
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [organizationId] Part of `parent`. Required. The parent resource name in the form of:
  /// [policyOrchestratorId] Required. The logical identifier of the policy orchestrator, with the following
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  const V2PolicyOrchestratorForOrganizationArgs({
    required this.action,
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.orchestratedResource,
    this.orchestrationScope,
    required this.organizationId,
    required this.policyOrchestratorId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'orchestratedResource': pulumi.Input.mapInputValue<V2PolicyOrchestratorForOrganizationOrchestratedResource, Map<String, dynamic>>(orchestratedResource, (value) => value.toMap()),
      'orchestrationScope': ?pulumi.Input.mapOptionalInputValue<V2PolicyOrchestratorForOrganizationOrchestrationScope, Map<String, dynamic>>(orchestrationScope, (value) => value.toMap()),
      'organizationId': organizationId,
      'policyOrchestratorId': policyOrchestratorId,
      'state': ?state,
    };
  }

  factory V2PolicyOrchestratorForOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationArgs(
      action: pulumi.Input.fromValue(map['action'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      orchestratedResource: pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestratedResource.fromMap((map['orchestratedResource']! as Map).cast<String, dynamic>())),
      orchestrationScope: (() { final guardedValue = map['orchestrationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2PolicyOrchestratorForOrganizationOrchestrationScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      policyOrchestratorId: pulumi.Input.fromValue(map['policyOrchestratorId'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
