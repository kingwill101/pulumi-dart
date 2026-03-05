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
    this.name,
    this.recoveryVaultName,
    this.resourceGroupName,
    this.sourceNetworkId,
    this.sourceRecoveryFabricName,
    this.targetNetworkId,
    this.targetRecoveryFabricName,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceNetworkId: (() { final guardedValue = map['sourceNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRecoveryFabricName: (() { final guardedValue = map['sourceRecoveryFabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNetworkId: (() { final guardedValue = map['targetNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRecoveryFabricName: (() { final guardedValue = map['targetRecoveryFabricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

