// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy_resource_group.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy {
  /// This flag determines the OS policy compliance status when none of the
  /// resource groups within the policy are applicable for a VM. Set this value
  /// to `true` if the policy needs to be reported as compliant even if the
  /// policy has nothing to validate or enforce.
  final pulumi.Input<bool?>? allowNoResourceGroupMatch;
  /// Policy description.
  /// Length of the description is limited to 1024 characters.
  final pulumi.Input<String?>? description;
  /// Required. The id of the OS policy with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the assignment.
  final pulumi.Input<String> id;
  /// Required. Policy mode
  /// Possible values:
  /// MODE_UNSPECIFIED
  /// VALIDATION
  /// ENFORCEMENT
  final pulumi.Input<String> mode;
  /// Required. List of resource groups for the policy.
  /// For a particular VM, resource groups are evaluated in the order specified
  /// and the first resource group that is applicable is selected and the rest
  /// are ignored.
  /// If none of the resource groups are applicable for a VM, the VM is
  /// considered to be non-compliant w.r.t this policy. This behavior can be
  /// toggled by the flag `allowNoResourceGroupMatch`
  /// Structure is documented below.
  final pulumi.Input<List<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup>> resourceGroups;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy].
  /// [allowNoResourceGroupMatch] This flag determines the OS policy compliance status when none of the
  /// [description] Policy description.
  /// [id] Required. The id of the OS policy with the following restrictions:
  /// [mode] Required. Policy mode
  /// [resourceGroups] Required. List of resource groups for the policy.
  const V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy({
    this.allowNoResourceGroupMatch,
    this.description,
    required this.id,
    required this.mode,
    required this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNoResourceGroupMatch': ?allowNoResourceGroupMatch,
      'description': ?description,
      'id': id,
      'mode': mode,
      'resourceGroups': pulumi.Input.mapInputValue<List<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup>, List<Map<String, dynamic>>>(resourceGroups, (value) => pulumi.Input.encodeList<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy(
      allowNoResourceGroupMatch: (() { final guardedValue = map['allowNoResourceGroupMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      resourceGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup>(map['resourceGroups']!, (value) => V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroup.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
