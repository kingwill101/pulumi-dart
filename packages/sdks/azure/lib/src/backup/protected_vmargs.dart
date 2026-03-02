// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_protected_vm_protected_vmargs_doc}
/// The set of arguments for ProtectedVM.
/// {@endtemplate}
/// {@macro pulumi_backup_protected_vm_protected_vmargs_doc}
class ProtectedVMArgs {
  /// Specifies the ID of the backup policy to use.
  ///
  /// > **Note:** `backup_policy_id` is required during initial creation of this resource.
  ///
  /// > **Note:** When `protection_state` is set to `BackupsSuspended` or `ProtectionStopped`, the Azure API may not return `backup_policy_id`. To avoid a perpetual diff, use Terraform's ignore_changes argument.
  final pulumi.Input<String>? backupPolicyId;
  /// A list of Disks' Logical Unit Numbers (LUN) to be excluded for VM Protection.
  final pulumi.Input<List<int>>? excludeDiskLuns;
  /// A list of Disks' Logical Unit Numbers (LUN) to be included for VM Protection.
  final pulumi.Input<List<int>>? includeDiskLuns;
  /// Specifies Protection state of the backup. Possible values are `Protected`, `BackupsSuspended`, and `ProtectionStopped`.
  ///
  /// > **Note:** `protection_state` cannot be set to `BackupsSuspended` unless the `azure.recoveryservices.Vault` has `immutability` set to `Unlocked` or `Locked`.
  final pulumi.Input<String>? protectionState;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Specifies the name of the Resource Group **associated with** the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the ID of the virtual machine to back up. Changing this forces a new resource to be created.
  ///
  /// > **Note:** After creation, the `source_vm_id` property can be removed without forcing a new resource to be created; however, setting it to a different ID will create a new resource. This allows the source virtual machine to be deleted without having to remove the backup.
  final pulumi.Input<String>? sourceVmId;

  /// Creates a new [ProtectedVMArgs].
  /// [backupPolicyId] Specifies the ID of the backup policy to use.
  /// [excludeDiskLuns] A list of Disks' Logical Unit Numbers (LUN) to be excluded for VM Protection.
  /// [includeDiskLuns] A list of Disks' Logical Unit Numbers (LUN) to be included for VM Protection.
  /// [protectionState] Specifies Protection state of the backup. Possible values are `Protected`, `BackupsSuspended`, and `ProtectionStopped`.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group **associated with** the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [sourceVmId] Specifies the ID of the virtual machine to back up. Changing this forces a new resource to be created.
  ProtectedVMArgs({
    this.backupPolicyId,
    this.excludeDiskLuns,
    this.includeDiskLuns,
    this.protectionState,
    required this.recoveryVaultName,
    required this.resourceGroupName,
    this.sourceVmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'excludeDiskLuns': ?excludeDiskLuns,
      'includeDiskLuns': ?includeDiskLuns,
      'protectionState': ?protectionState,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'sourceVmId': ?sourceVmId,
    };
  }

  factory ProtectedVMArgs.fromMap(Map<String, dynamic> map) {
    return ProtectedVMArgs(
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId']! as String).input(),
      excludeDiskLuns: map['excludeDiskLuns'] == null ? null : ((map['excludeDiskLuns']! as List).cast<int>()).input(),
      includeDiskLuns: map['includeDiskLuns'] == null ? null : ((map['includeDiskLuns']! as List).cast<int>()).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState']! as String).input(),
      recoveryVaultName: (map['recoveryVaultName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId']! as String).input(),
    );
  }
}

