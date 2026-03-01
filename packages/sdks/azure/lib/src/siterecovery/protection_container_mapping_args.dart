// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_automatic_update.dart';

/// {@template pulumi_siterecovery_protection_container_mapping_protection_container_mapping_args_doc}
/// The set of arguments for ProtectionContainerMapping.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_protection_container_mapping_protection_container_mapping_args_doc}
class ProtectionContainerMappingArgs {
  /// a `automatic_update` block defined as below.
  final pulumi.Input<ProtectionContainerMappingAutomaticUpdate>? automaticUpdate;
  /// The name of the protection container mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
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
  /// [automaticUpdate] a `automatic_update` block defined as below.
  /// [name] The name of the protection container mapping. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  /// [recoveryReplicationPolicyId] Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  /// [recoverySourceProtectionContainerName] Name of the source protection container to map. Changing this forces a new resource to be created.
  /// [recoveryTargetProtectionContainerId] Id of target protection container to map to. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  ProtectionContainerMappingArgs({
    pulumi.Output<ProtectionContainerMappingAutomaticUpdate>? automaticUpdate,
    pulumi.Output<String>? name,
    required pulumi.Output<String> recoveryFabricName,
    required pulumi.Output<String> recoveryReplicationPolicyId,
    required pulumi.Output<String> recoverySourceProtectionContainerName,
    required pulumi.Output<String> recoveryTargetProtectionContainerId,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automaticUpdate = pulumi.Input.asOptionalInput<ProtectionContainerMappingAutomaticUpdate>(automaticUpdate),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryFabricName = pulumi.Input.asInput<String>(recoveryFabricName),
      recoveryReplicationPolicyId = pulumi.Input.asInput<String>(recoveryReplicationPolicyId),
      recoverySourceProtectionContainerName = pulumi.Input.asInput<String>(recoverySourceProtectionContainerName),
      recoveryTargetProtectionContainerId = pulumi.Input.asInput<String>(recoveryTargetProtectionContainerId),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      automaticUpdate: map['automaticUpdate'] == null ? null : pulumi.Output.create<ProtectionContainerMappingAutomaticUpdate>(ProtectionContainerMappingAutomaticUpdate.fromMap((map['automaticUpdate'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryFabricName: pulumi.Output.create<String>(map['recoveryFabricName'] as String),
      recoveryReplicationPolicyId: pulumi.Output.create<String>(map['recoveryReplicationPolicyId'] as String),
      recoverySourceProtectionContainerName: pulumi.Output.create<String>(map['recoverySourceProtectionContainerName'] as String),
      recoveryTargetProtectionContainerId: pulumi.Output.create<String>(map['recoveryTargetProtectionContainerId'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

