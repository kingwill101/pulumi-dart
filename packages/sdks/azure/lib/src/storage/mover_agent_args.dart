// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_agent_mover_agent_args_doc}
/// The set of arguments for MoverAgent.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_agent_mover_agent_args_doc}
class MoverAgentArgs {
  /// Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String> arcVirtualMachineId;
  /// Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created.
  final pulumi.Input<String> arcVirtualMachineUuid;
  /// Specifies a description for this Storage Mover Agent.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverId;

  /// Creates a new [MoverAgentArgs].
  /// [arcVirtualMachineId] Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created.
  /// [arcVirtualMachineUuid] Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created.
  /// [description] Specifies a description for this Storage Mover Agent.
  /// [name] Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created.
  MoverAgentArgs({
    required this.arcVirtualMachineId,
    required this.arcVirtualMachineUuid,
    this.description,
    this.name,
    required this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcVirtualMachineId': arcVirtualMachineId,
      'arcVirtualMachineUuid': arcVirtualMachineUuid,
      'description': ?description,
      'name': ?name,
      'storageMoverId': storageMoverId,
    };
  }

  factory MoverAgentArgs.fromMap(Map<String, dynamic> map) {
    return MoverAgentArgs(
      arcVirtualMachineId: (map['arcVirtualMachineId'] as String).input(),
      arcVirtualMachineUuid: (map['arcVirtualMachineUuid'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      storageMoverId: (map['storageMoverId'] as String).input(),
    );
  }
}

