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
    pulumi.Output<ProtectionContainerMappingAutomaticUpdate>? automaticUpdate,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryFabricName,
    pulumi.Output<String>? recoveryReplicationPolicyId,
    pulumi.Output<String>? recoverySourceProtectionContainerName,
    pulumi.Output<String>? recoveryTargetProtectionContainerId,
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
  }) :
      automaticUpdate = pulumi.Input.asOptionalInput<ProtectionContainerMappingAutomaticUpdate>(automaticUpdate),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryFabricName = pulumi.Input.asOptionalInput<String>(recoveryFabricName),
      recoveryReplicationPolicyId = pulumi.Input.asOptionalInput<String>(recoveryReplicationPolicyId),
      recoverySourceProtectionContainerName = pulumi.Input.asOptionalInput<String>(recoverySourceProtectionContainerName),
      recoveryTargetProtectionContainerId = pulumi.Input.asOptionalInput<String>(recoveryTargetProtectionContainerId),
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      automaticUpdate: map['automaticUpdate'] == null ? null : pulumi.Output.create<ProtectionContainerMappingAutomaticUpdate>(ProtectionContainerMappingAutomaticUpdate.fromMap((map['automaticUpdate'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryFabricName: map['recoveryFabricName'] == null ? null : pulumi.Output.create<String>(map['recoveryFabricName'] as String),
      recoveryReplicationPolicyId: map['recoveryReplicationPolicyId'] == null ? null : pulumi.Output.create<String>(map['recoveryReplicationPolicyId'] as String),
      recoverySourceProtectionContainerName: map['recoverySourceProtectionContainerName'] == null ? null : pulumi.Output.create<String>(map['recoverySourceProtectionContainerName'] as String),
      recoveryTargetProtectionContainerId: map['recoveryTargetProtectionContainerId'] == null ? null : pulumi.Output.create<String>(map['recoveryTargetProtectionContainerId'] as String),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

