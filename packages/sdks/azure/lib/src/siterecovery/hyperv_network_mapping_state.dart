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
    pulumi.Output<String>? name,
    pulumi.Output<String>? recoveryVaultId,
    pulumi.Output<String>? sourceNetworkName,
    pulumi.Output<String>? sourceSystemCenterVirtualMachineManagerName,
    pulumi.Output<String>? targetNetworkId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryVaultId = pulumi.Input.asOptionalInput<String>(recoveryVaultId),
      sourceNetworkName = pulumi.Input.asOptionalInput<String>(sourceNetworkName),
      sourceSystemCenterVirtualMachineManagerName = pulumi.Input.asOptionalInput<String>(sourceSystemCenterVirtualMachineManagerName),
      targetNetworkId = pulumi.Input.asOptionalInput<String>(targetNetworkId);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryVaultId: map['recoveryVaultId'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultId'] as String),
      sourceNetworkName: map['sourceNetworkName'] == null ? null : pulumi.Output.create<String>(map['sourceNetworkName'] as String),
      sourceSystemCenterVirtualMachineManagerName: map['sourceSystemCenterVirtualMachineManagerName'] == null ? null : pulumi.Output.create<String>(map['sourceSystemCenterVirtualMachineManagerName'] as String),
      targetNetworkId: map['targetNetworkId'] == null ? null : pulumi.Output.create<String>(map['targetNetworkId'] as String),
    );
  }
}

