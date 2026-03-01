// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_v_mware_replication_policy_vmware_replication_policy_args_doc}
/// The set of arguments for VMWareReplicationPolicy.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_v_mware_replication_policy_vmware_replication_policy_args_doc}
class VMWareReplicationPolicyArgs {
  /// Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`.
  final pulumi.Input<int> applicationConsistentSnapshotFrequencyInMinutes;
  /// The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created.
  final pulumi.Input<String>? name;
  /// Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`.
  final pulumi.Input<int> recoveryPointRetentionInMinutes;
  /// ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created.
  final pulumi.Input<String> recoveryVaultId;

  /// Creates a new [VMWareReplicationPolicyArgs].
  /// [applicationConsistentSnapshotFrequencyInMinutes] Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`.
  /// [name] The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created.
  /// [recoveryPointRetentionInMinutes] Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`.
  /// [recoveryVaultId] ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created.
  VMWareReplicationPolicyArgs({
    required pulumi.Output<int> applicationConsistentSnapshotFrequencyInMinutes,
    pulumi.Output<String>? name,
    required pulumi.Output<int> recoveryPointRetentionInMinutes,
    required pulumi.Output<String> recoveryVaultId,
  }) :
      applicationConsistentSnapshotFrequencyInMinutes = pulumi.Input.asInput<int>(applicationConsistentSnapshotFrequencyInMinutes),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPointRetentionInMinutes = pulumi.Input.asInput<int>(recoveryPointRetentionInMinutes),
      recoveryVaultId = pulumi.Input.asInput<String>(recoveryVaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConsistentSnapshotFrequencyInMinutes': applicationConsistentSnapshotFrequencyInMinutes,
      'name': ?name,
      'recoveryPointRetentionInMinutes': recoveryPointRetentionInMinutes,
      'recoveryVaultId': recoveryVaultId,
    };
  }

  factory VMWareReplicationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VMWareReplicationPolicyArgs(
      applicationConsistentSnapshotFrequencyInMinutes: pulumi.Output.create<int>(map['applicationConsistentSnapshotFrequencyInMinutes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryPointRetentionInMinutes: pulumi.Output.create<int>(map['recoveryPointRetentionInMinutes'] as int),
      recoveryVaultId: pulumi.Output.create<String>(map['recoveryVaultId'] as String),
    );
  }
}

