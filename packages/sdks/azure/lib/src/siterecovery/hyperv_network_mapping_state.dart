// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HypervNetworkMapping resources.
class HypervNetworkMappingState {
  /// The name of the HyperV network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultId;
  /// The Name of the primary network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceNetworkName;
  /// Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceSystemCenterVirtualMachineManagerName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetNetworkId;

  /// Creates a new [HypervNetworkMappingState].
  /// [name] The name of the HyperV network mapping. Changing this forces a new resource to be created.
  /// [recoveryVaultId] The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created.
  /// [sourceNetworkName] The Name of the primary network. Changing this forces a new resource to be created.
  /// [sourceSystemCenterVirtualMachineManagerName] Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created.
  /// [targetNetworkId] The id of the recovery network. Changing this forces a new resource to be created.
  HypervNetworkMappingState({
    this.name,
    this.recoveryVaultId,
    this.sourceNetworkName,
    this.sourceSystemCenterVirtualMachineManagerName,
    this.targetNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultId': ?recoveryVaultId,
      'sourceNetworkName': ?sourceNetworkName,
      'sourceSystemCenterVirtualMachineManagerName': ?sourceSystemCenterVirtualMachineManagerName,
      'targetNetworkId': ?targetNetworkId,
    };
  }

  factory HypervNetworkMappingState.fromMap(Map<String, dynamic> map) {
    return HypervNetworkMappingState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : (map['recoveryVaultId']! as String).input(),
      sourceNetworkName: map['sourceNetworkName'] == null ? null : (map['sourceNetworkName']! as String).input(),
      sourceSystemCenterVirtualMachineManagerName: map['sourceSystemCenterVirtualMachineManagerName'] == null ? null : (map['sourceSystemCenterVirtualMachineManagerName']! as String).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId']! as String).input(),
    );
  }
}

