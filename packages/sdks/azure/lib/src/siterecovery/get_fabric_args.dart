// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_get_fabric_get_fabric_args_doc}
/// Arguments for getFabric.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_get_fabric_get_fabric_args_doc}
class GetFabricArgs {
  /// Specifies the name of the Site Recovery Replication Fabric.
  final pulumi.Input<String> name;
  /// The name of the Recovery Services Vault that the Site Recovery Replication Fabric is associated witth.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which the associated Recovery Services Vault resides.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFabricArgs].
  /// [name] Specifies the name of the Site Recovery Replication Fabric.
  /// [recoveryVaultName] The name of the Recovery Services Vault that the Site Recovery Replication Fabric is associated witth.
  /// [resourceGroupName] The name of the resource group in which the associated Recovery Services Vault resides.
  GetFabricArgs({
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

  factory GetFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetFabricArgs(
      name: (map['name'] as String).input(),
      recoveryVaultName: (map['recoveryVaultName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

