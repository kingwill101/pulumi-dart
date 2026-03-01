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
    required pulumi.Output<String> name,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetFabricArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

