// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_network_mapping_network_mapping_args_doc}
/// The set of arguments for NetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_network_mapping_network_mapping_args_doc}
class NetworkMappingArgs {
  /// The name of the network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The id of the primary network. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceNetworkId;
  /// Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceRecoveryFabricName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetNetworkId;
  /// The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetRecoveryFabricName;

  /// Creates a new [NetworkMappingArgs].
  /// [name] The name of the network mapping. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  /// [sourceNetworkId] The id of the primary network. Changing this forces a new resource to be created.
  /// [sourceRecoveryFabricName] Specifies the ASR fabric where mapping should be created. Changing this forces a new resource to be created.
  /// [targetNetworkId] The id of the recovery network. Changing this forces a new resource to be created.
  /// [targetRecoveryFabricName] The Azure Site Recovery fabric object corresponding to the recovery Azure region. Changing this forces a new resource to be created.
  const NetworkMappingArgs({
    this.name,
    required this.recoveryVaultName,
    required this.resourceGroupName,
    required this.sourceNetworkId,
    required this.sourceRecoveryFabricName,
    required this.targetNetworkId,
    required this.targetRecoveryFabricName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'sourceNetworkId': sourceNetworkId,
      'sourceRecoveryFabricName': sourceRecoveryFabricName,
      'targetNetworkId': targetNetworkId,
      'targetRecoveryFabricName': targetRecoveryFabricName,
    };
  }

  factory NetworkMappingArgs.fromMap(Map<String, dynamic> map) {
    return NetworkMappingArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceNetworkId: pulumi.Input.fromValue(map['sourceNetworkId'] as String),
      sourceRecoveryFabricName: pulumi.Input.fromValue(map['sourceRecoveryFabricName'] as String),
      targetNetworkId: pulumi.Input.fromValue(map['targetNetworkId'] as String),
      targetRecoveryFabricName: pulumi.Input.fromValue(map['targetRecoveryFabricName'] as String),
    );
  }
}
