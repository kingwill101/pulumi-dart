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
    this.claimsMappingPolicyId,
    this.servicePrincipalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimsMappingPolicyId': ?claimsMappingPolicyId,
      'servicePrincipalId': ?servicePrincipalId,
    };
  }

  factory ServicePrincipalClaimsMappingPolicyAssignmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePrincipalClaimsMappingPolicyAssignmentState(
      claimsMappingPolicyId: (() {
        final guardedValue = map['claimsMappingPolicyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servicePrincipalId: (() {
        final guardedValue = map['servicePrincipalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
