// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_service_principal_claims_mapping_policy_assignment_service_principal_claims_mapping_policy_assignment_args_doc}
/// The set of arguments for ServicePrincipalClaimsMappingPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_index_service_principal_claims_mapping_policy_assignment_service_principal_claims_mapping_policy_assignment_args_doc}
class ServicePrincipalClaimsMappingPolicyAssignmentArgs {
  /// The ID of the claims mapping policy to assign.
  final pulumi.Input<String> claimsMappingPolicyId;
  /// The ID of the service principal for the policy assignment.
  final pulumi.Input<String> servicePrincipalId;

  /// Creates a new [ServicePrincipalClaimsMappingPolicyAssignmentArgs].
  /// [claimsMappingPolicyId] The ID of the claims mapping policy to assign.
  /// [servicePrincipalId] The ID of the service principal for the policy assignment.
  ServicePrincipalClaimsMappingPolicyAssignmentArgs({
    required pulumi.Output<String> claimsMappingPolicyId,
    required pulumi.Output<String> servicePrincipalId,
  }) :
      claimsMappingPolicyId = pulumi.Input.asInput<String>(claimsMappingPolicyId),
      servicePrincipalId = pulumi.Input.asInput<String>(servicePrincipalId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimsMappingPolicyId': claimsMappingPolicyId,
      'servicePrincipalId': servicePrincipalId,
    };
  }

  factory ServicePrincipalClaimsMappingPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalClaimsMappingPolicyAssignmentArgs(
      claimsMappingPolicyId: pulumi.Output.create<String>(map['claimsMappingPolicyId'] as String),
      servicePrincipalId: pulumi.Output.create<String>(map['servicePrincipalId'] as String),
    );
  }
}

