// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_network_mapping_network_mapping_args_doc}
/// The set of arguments for NetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_network_mapping_network_mapping_args_doc}
class NetworkMappingArgs {
  /// The name of the network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
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
  NetworkMappingArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceNetworkId,
    required pulumi.Output<String> sourceRecoveryFabricName,
    required pulumi.Output<String> targetNetworkId,
    required pulumi.Output<String> targetRecoveryFabricName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceNetworkId = pulumi.Input.asInput<String>(sourceNetworkId),
      sourceRecoveryFabricName = pulumi.Input.asInput<String>(sourceRecoveryFabricName),
      targetNetworkId = pulumi.Input.asInput<String>(targetNetworkId),
      targetRecoveryFabricName = pulumi.Input.asInput<String>(targetRecoveryFabricName);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceNetworkId: pulumi.Output.create<String>(map['sourceNetworkId'] as String),
      sourceRecoveryFabricName: pulumi.Output.create<String>(map['sourceRecoveryFabricName'] as String),
      targetNetworkId: pulumi.Output.create<String>(map['targetNetworkId'] as String),
      targetRecoveryFabricName: pulumi.Output.create<String>(map['targetRecoveryFabricName'] as String),
    );
  }
}

