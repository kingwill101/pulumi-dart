// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_protected_vm_protected_vmargs_doc}
/// The set of arguments for ProtectedVM.
/// {@endtemplate}
/// {@macro pulumi_backup_protected_vm_protected_vmargs_doc}
class ProtectedVMArgs {
  /// Specifies the ID of the backup policy to use.
  ///
  /// &gt; **Note:** `backupPolicyId` is required during initial creation of this resource.
  ///
  /// &gt; **Note:** When `protectionState` is set to `BackupsSuspended` or `ProtectionStopped`, the Azure API may not return `backupPolicyId`. To avoid a perpetual diff, use Terraform's ignoreChanges argument.
  final pulumi.Input<String>? backupPolicyId;
  /// A list of Disks' Logical Unit Numbers (LUN) to be excluded for VM Protection.
  final pulumi.Input<List<int>>? excludeDiskLuns;
  /// A list of Disks' Logical Unit Numbers (LUN) to be included for VM Protection.
  final pulumi.Input<List<int>>? includeDiskLuns;
  /// Specifies Protection state of the backup. Possible values are `Protected`, `BackupsSuspended`, and `ProtectionStopped`.
  ///
  /// &gt; **Note:** `protectionState` cannot be set to `BackupsSuspended` unless the `azure.recoveryservices.Vault` has `immutability` set to `Unlocked` or `Locked`.
  final pulumi.Input<String>? protectionState;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Specifies the name of the Resource Group **associated with** the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the ID of the virtual machine to back up. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** After creation, the `sourceVmId` property can be removed without forcing a new resource to be created; however, setting it to a different ID will create a new resource. This allows the source virtual machine to be deleted without having to remove the backup.
  final pulumi.Input<String>? sourceVmId;

  /// Creates a new [ProtectedVMArgs].
  /// [backupPolicyId] Specifies the ID of the backup policy to use.
  /// [excludeDiskLuns] A list of Disks' Logical Unit Numbers (LUN) to be excluded for VM Protection.
  /// [includeDiskLuns] A list of Disks' Logical Unit Numbers (LUN) to be included for VM Protection.
  /// [protectionState] Specifies Protection state of the backup. Possible values are `Protected`, `BackupsSuspended`, and `ProtectionStopped`.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group **associated with** the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [sourceVmId] Specifies the ID of the virtual machine to back up. Changing this forces a new resource to be created.
  const ProtectedVMArgs({
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
      backupPolicyId: (() { final guardedValue = map['backupPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeDiskLuns: (() { final guardedValue = map['excludeDiskLuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      includeDiskLuns: (() { final guardedValue = map['includeDiskLuns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      protectionState: (() { final guardedValue = map['protectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceVmId: (() { final guardedValue = map['sourceVmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
