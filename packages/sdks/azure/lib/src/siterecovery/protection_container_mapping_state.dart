// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_automatic_update.dart';

/// Input properties used for looking up and filtering ProtectionContainerMapping resources.
class ProtectionContainerMappingState {
  /// a `automatic_update` block defined as below.
  final pulumi.Input<ProtectionContainerMappingAutomaticUpdate>? automaticUpdate;
  /// The name of the protection container mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryFabricName;
  /// Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryReplicationPolicyId;
  /// Name of the source protection container to map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoverySourceProtectionContainerName;
  /// Id of target protection container to map to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryTargetProtectionContainerId;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ProtectionContainerMappingState].
  /// [automaticUpdate] a `automatic_update` block defined as below.
  /// [name] The name of the protection container mapping. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  /// [recoveryReplicationPolicyId] Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  /// [recoverySourceProtectionContainerName] Name of the source protection container to map. Changing this forces a new resource to be created.
  /// [recoveryTargetProtectionContainerId] Id of target protection container to map to. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  ProtectionContainerMappingState({
    this.automaticUpdate,
    this.name,
    this.recoveryFabricName,
    this.recoveryReplicationPolicyId,
    this.recoverySourceProtectionContainerName,
    this.recoveryTargetProtectionContainerId,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticUpdate': ?pulumi.Input.mapOptionalInputValue<ProtectionContainerMappingAutomaticUpdate, Map<String, dynamic>>(automaticUpdate, (value) => value.toMap()),
      'name': ?name,
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryReplicationPolicyId': ?recoveryReplicationPolicyId,
      'recoverySourceProtectionContainerName': ?recoverySourceProtectionContainerName,
      'recoveryTargetProtectionContainerId': ?recoveryTargetProtectionContainerId,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ProtectionContainerMappingState.fromMap(Map<String, dynamic> map) {
    return ProtectionContainerMappingState(
      automaticUpdate: map['automaticUpdate'] == null ? null : (ProtectionContainerMappingAutomaticUpdate.fromMap((map['automaticUpdate'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recoveryFabricName: map['recoveryFabricName'] == null ? null : (map['recoveryFabricName'] as String).input(),
      recoveryReplicationPolicyId: map['recoveryReplicationPolicyId'] == null ? null : (map['recoveryReplicationPolicyId'] as String).input(),
      recoverySourceProtectionContainerName: map['recoverySourceProtectionContainerName'] == null ? null : (map['recoverySourceProtectionContainerName'] as String).input(),
      recoveryTargetProtectionContainerId: map['recoveryTargetProtectionContainerId'] == null ? null : (map['recoveryTargetProtectionContainerId'] as String).input(),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : (map['recoveryVaultName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

