// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkMapping resources.
class NetworkMappingState {
  /// The name of the network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The id of the primary network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceNetworkId;
  /// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceRecoveryFabricName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetNetworkId;
  /// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetRecoveryFabricName;

  /// Creates a new [NetworkMappingState].
  /// [name] The name of the network mapping. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  /// [sourceNetworkId] The id of the primary network. Changing this forces a new resource to be created.
  /// [sourceRecoveryFabricName] Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
  /// [targetNetworkId] The id of the recovery network. Changing this forces a new resource to be created.
  /// [targetRecoveryFabricName] The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
  NetworkMappingState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sourceNetworkId,
    pulumi.Output<String>? sourceRecoveryFabricName,
    pulumi.Output<String>? targetNetworkId,
    pulumi.Output<String>? targetRecoveryFabricName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sourceNetworkId = pulumi.Input.asOptionalInput<String>(sourceNetworkId),
      sourceRecoveryFabricName = pulumi.Input.asOptionalInput<String>(sourceRecoveryFabricName),
      targetNetworkId = pulumi.Input.asOptionalInput<String>(targetNetworkId),
      targetRecoveryFabricName = pulumi.Input.asOptionalInput<String>(targetRecoveryFabricName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'sourceNetworkId': ?sourceNetworkId,
      'sourceRecoveryFabricName': ?sourceRecoveryFabricName,
      'targetNetworkId': ?targetNetworkId,
      'targetRecoveryFabricName': ?targetRecoveryFabricName,
    };
  }

  factory NetworkMappingState.fromMap(Map<String, dynamic> map) {
    return NetworkMappingState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceNetworkId: map['sourceNetworkId'] == null ? null : pulumi.Output.create<String>(map['sourceNetworkId'] as String),
      sourceRecoveryFabricName: map['sourceRecoveryFabricName'] == null ? null : pulumi.Output.create<String>(map['sourceRecoveryFabricName'] as String),
      targetNetworkId: map['targetNetworkId'] == null ? null : pulumi.Output.create<String>(map['targetNetworkId'] as String),
      targetRecoveryFabricName: map['targetRecoveryFabricName'] == null ? null : pulumi.Output.create<String>(map['targetRecoveryFabricName'] as String),
    );
  }
}

