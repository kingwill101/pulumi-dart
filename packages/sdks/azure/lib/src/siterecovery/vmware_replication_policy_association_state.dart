// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VmwareReplicationPolicyAssociation resources.
class VmwareReplicationPolicyAssociationState {
  /// The name of the replication policy association. Changing this forces a new association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the VMWare replication policy which to be associated. Changing this forces a new association to be created.
  final pulumi.Input<String>? policyId;
  /// The ID of the Recovery Service Vault to which the policy should be associated.
  /// Changing this forces a new association to be created.
  final pulumi.Input<String>? recoveryVaultId;

  /// Creates a new [VmwareReplicationPolicyAssociationState].
  /// [name] The name of the replication policy association. Changing this forces a new association to be created.
  /// [policyId] The ID of the VMWare replication policy which to be associated. Changing this forces a new association to be created.
  /// [recoveryVaultId] The ID of the Recovery Service Vault to which the policy should be associated.
  VmwareReplicationPolicyAssociationState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
    pulumi.Output<String>? recoveryVaultId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId),
      recoveryVaultId = pulumi.Input.asOptionalInput<String>(recoveryVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policyId': ?policyId,
      'recoveryVaultId': ?recoveryVaultId,
    };
  }

  factory VmwareReplicationPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return VmwareReplicationPolicyAssociationState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultId'] as String),
    );
  }
}

