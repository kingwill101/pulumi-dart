// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_automatic_update.dart';

/// Input properties used for looking up and filtering ProtectionContainerMapping resources.
class ProtectionContainerMappingState {
  /// a `automaticUpdate` block defined as below.
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
  /// [automaticUpdate] a `automaticUpdate` block defined as below.
  /// [name] The name of the protection container mapping. Changing this forces a new resource to be created.
  /// [recoveryFabricName] Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  /// [recoveryReplicationPolicyId] Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  /// [recoverySourceProtectionContainerName] Name of the source protection container to map. Changing this forces a new resource to be created.
  /// [recoveryTargetProtectionContainerId] Id of target protection container to map to. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  const ProtectionContainerMappingState({
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
      automaticUpdate: (() { final guardedValue = map['automaticUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtectionContainerMappingAutomaticUpdate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryFabricName: (() { final guardedValue = map['recoveryFabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryReplicationPolicyId: (() { final guardedValue = map['recoveryReplicationPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoverySourceProtectionContainerName: (() { final guardedValue = map['recoverySourceProtectionContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryTargetProtectionContainerId: (() { final guardedValue = map['recoveryTargetProtectionContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
