// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePrincipalClaimsMappingPolicyAssignment resources.
class ServicePrincipalClaimsMappingPolicyAssignmentState {
  /// The ID of the claims mapping policy to assign.
  final pulumi.Input<String>? claimsMappingPolicyId;
  /// The ID of the service principal for the policy assignment.
  final pulumi.Input<String>? servicePrincipalId;

  /// Creates a new [ServicePrincipalClaimsMappingPolicyAssignmentState].
  /// [claimsMappingPolicyId] The ID of the claims mapping policy to assign.
  /// [servicePrincipalId] The ID of the service principal for the policy assignment.
  ServicePrincipalClaimsMappingPolicyAssignmentState({
    pulumi.Output<String>? claimsMappingPolicyId,
    pulumi.Output<String>? servicePrincipalId,
  }) :
      claimsMappingPolicyId = pulumi.Input.asOptionalInput<String>(claimsMappingPolicyId),
      servicePrincipalId = pulumi.Input.asOptionalInput<String>(servicePrincipalId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimsMappingPolicyId': ?claimsMappingPolicyId,
      'servicePrincipalId': ?servicePrincipalId,
    };
  }

  factory ServicePrincipalClaimsMappingPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalClaimsMappingPolicyAssignmentState(
      claimsMappingPolicyId: map['claimsMappingPolicyId'] == null ? null : pulumi.Output.create<String>(map['claimsMappingPolicyId'] as String),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : pulumi.Output.create<String>(map['servicePrincipalId'] as String),
    );
  }
}

