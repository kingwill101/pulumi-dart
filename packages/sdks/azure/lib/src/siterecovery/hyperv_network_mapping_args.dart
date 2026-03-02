// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_siterecovery_hyperv_network_mapping_hyperv_network_mapping_args_doc}
/// The set of arguments for HypervNetworkMapping.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_hyperv_network_mapping_hyperv_network_mapping_args_doc}
class HypervNetworkMappingArgs {
  /// The name of the HyperV network mapping. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultId;
  /// The Name of the primary network. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceNetworkName;
  /// Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceSystemCenterVirtualMachineManagerName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetNetworkId;

  /// Creates a new [HypervNetworkMappingArgs].
  /// [name] The name of the HyperV network mapping. Changing this forces a new resource to be created.
  /// [recoveryVaultId] The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created.
  /// [sourceNetworkName] The Name of the primary network. Changing this forces a new resource to be created.
  /// [sourceSystemCenterVirtualMachineManagerName] Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created.
  /// [targetNetworkId] The id of the recovery network. Changing this forces a new resource to be created.
  HypervNetworkMappingArgs({
    this.name,
    required this.recoveryVaultId,
    required this.sourceNetworkName,
    required this.sourceSystemCenterVirtualMachineManagerName,
    required this.targetNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'recoveryVaultId': recoveryVaultId,
      'sourceNetworkName': sourceNetworkName,
      'sourceSystemCenterVirtualMachineManagerName': sourceSystemCenterVirtualMachineManagerName,
      'targetNetworkId': targetNetworkId,
    };
  }

  factory HypervNetworkMappingArgs.fromMap(Map<String, dynamic> map) {
    return HypervNetworkMappingArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      recoveryVaultId: (map['recoveryVaultId'] as String).input(),
      sourceNetworkName: (map['sourceNetworkName'] as String).input(),
      sourceSystemCenterVirtualMachineManagerName: (map['sourceSystemCenterVirtualMachineManagerName'] as String).input(),
      targetNetworkId: (map['targetNetworkId'] as String).input(),
    );
  }
}

