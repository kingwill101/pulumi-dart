// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_automatic_update.dart';

/// {@template pulumi_siterecovery_protection_container_mapping_protection_container_mapping_args_doc}
/// The set of arguments for ProtectionContainerMapping.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_protection_container_mapping_protection_container_mapping_args_doc}
class ProtectionContainerMappingArgs {
  /// a `automaticUpdate` block defined as below.
  final pulumi.Input<ProtectionContainerMappingAutomaticUpdate?>? automaticUpdate;
  /// The name of the protection container mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryFabricName;
  /// Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryReplicationPolicyId;
  /// Name of the source protection container to map. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoverySourceProtectionContainerName;
  /// Id of target protection container to map to. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryTargetProtectionContainerId;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProtectionContainerMappingArgs].
  /// [automaticUpdate] a `automaticUpdate` block defined as below.
  /// [name] The name of the protection container mapping. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  /// [recoveryReplicationPolicyId] Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  /// [recoverySourceProtectionContainerName] Name of the source protection container to map. Changing this forces a new resource to be created.
  /// [recoveryTargetProtectionContainerId] Id of target protection container to map to. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  const ProtectionContainerMappingArgs({
    this.automaticUpdate,
    this.name,
    required this.recoveryFabricName,
    required this.recoveryReplicationPolicyId,
    required this.recoverySourceProtectionContainerName,
    required this.recoveryTargetProtectionContainerId,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdate': ?pulumi.Input.mapOptionalInputValue<ProtectionContainerMappingAutomaticUpdate, Map<String, dynamic>>(automaticUpdate, (value) => value.toMap()),
      'name': ?name,
      'recoveryFabricName': recoveryFabricName,
      'recoveryReplicationPolicyId': recoveryReplicationPolicyId,
      'recoverySourceProtectionContainerName': recoverySourceProtectionContainerName,
      'recoveryTargetProtectionContainerId': recoveryTargetProtectionContainerId,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProtectionContainerMappingArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingArgs(
      automaticUpdate: (() { final guardedValue = map['automaticUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtectionContainerMappingAutomaticUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricName: pulumi.Input.fromValue(map['recoveryFabricName'] as String),
      recoveryReplicationPolicyId: pulumi.Input.fromValue(map['recoveryReplicationPolicyId'] as String),
      recoverySourceProtectionContainerName: pulumi.Input.fromValue(map['recoverySourceProtectionContainerName'] as String),
      recoveryTargetProtectionContainerId: pulumi.Input.fromValue(map['recoveryTargetProtectionContainerId'] as String),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
