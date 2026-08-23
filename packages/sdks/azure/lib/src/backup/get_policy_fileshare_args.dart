// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_get_policy_fileshare_get_policy_fileshare_args_doc}
/// Arguments for getPolicyFileshare.
/// {@endtemplate}
/// {@macro pulumi_backup_get_policy_fileshare_get_policy_fileshare_args_doc}
class GetPolicyFileshareArgs {
  /// Specifies the name of the File Share Backup Policy.
  final pulumi.Input<String> name;
  /// Specifies the name of the Recovery Services Vault.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which the File Share Backup Policy resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyFileshareArgs].
  /// [name] Specifies the name of the File Share Backup Policy.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault.
  /// [resourceGroupName] The name of the resource group in which the File Share Backup Policy resides.
  const GetPolicyFileshareArgs({
    required this.name,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyFileshareArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyFileshareArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
