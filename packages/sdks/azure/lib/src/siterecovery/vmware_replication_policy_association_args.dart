// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_vmware_replication_policy_association_vmware_replication_policy_association_args_doc}
/// The set of arguments for VmwareReplicationPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_vmware_replication_policy_association_vmware_replication_policy_association_args_doc}
class VmwareReplicationPolicyAssociationArgs {
  /// The name of the replication policy association. Changing this forces a new association to be created.
  final pulumi.Input<String>? name;
  /// The ID of the VMWare replication policy which to be associated. Changing this forces a new association to be created.
  final pulumi.Input<String> policyId;
  /// The ID of the Recovery Service Vault to which the policy should be associated.
  /// Changing this forces a new association to be created.
  final pulumi.Input<String> recoveryVaultId;

  /// Creates a new [VmwareReplicationPolicyAssociationArgs].
  /// [name] The name of the replication policy association. Changing this forces a new association to be created.
  /// [policyId] The ID of the VMWare replication policy which to be associated. Changing this forces a new association to be created.
  /// [recoveryVaultId] The ID of the Recovery Service Vault to which the policy should be associated.
  VmwareReplicationPolicyAssociationArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyId,
    required pulumi.Output<String> recoveryVaultId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asInput<String>(policyId),
      recoveryVaultId = pulumi.Input.asInput<String>(recoveryVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policyId': policyId,
      'recoveryVaultId': recoveryVaultId,
    };
  }

  factory VmwareReplicationPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VmwareReplicationPolicyAssociationArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: pulumi.Output.create<String>(map['policyId'] as String),
      recoveryVaultId: pulumi.Output.create<String>(map['recoveryVaultId'] as String),
    );
  }
}

