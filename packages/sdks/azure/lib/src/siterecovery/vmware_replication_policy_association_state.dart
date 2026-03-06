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
  const VmwareReplicationPolicyAssociationState({
    this.name,
    this.policyId,
    this.recoveryVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policyId': ?policyId,
      'recoveryVaultId': ?recoveryVaultId,
    };
  }

  factory VmwareReplicationPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return VmwareReplicationPolicyAssociationState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultId: (() { final guardedValue = map['recoveryVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

