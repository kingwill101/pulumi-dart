// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverAgent resources.
class MoverAgentState {
  /// Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? arcVirtualMachineId;
  /// Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created.
  final pulumi.Input<String>? arcVirtualMachineUuid;
  /// Specifies a description for this Storage Mover Agent.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageMoverId;

  /// Creates a new [MoverAgentState].
  /// [arcVirtualMachineId] Specifies the fully qualified ID of the Hybrid Compute resource for the Storage Mover Agent. Changing this forces a new resource to be created.
  /// [arcVirtualMachineUuid] Specifies the Hybrid Compute resource's unique SMBIOS ID. Changing this forces a new resource to be created.
  /// [description] Specifies a description for this Storage Mover Agent.
  /// [name] Specifies the name which should be used for this Storage Mover Agent. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the Storage Mover that this Agent should be connected to. Changing this forces a new resource to be created.
  MoverAgentState({
    this.arcVirtualMachineId,
    this.arcVirtualMachineUuid,
    this.description,
    this.name,
    this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcVirtualMachineId': ?arcVirtualMachineId,
      'arcVirtualMachineUuid': ?arcVirtualMachineUuid,
      'description': ?description,
      'name': ?name,
      'storageMoverId': ?storageMoverId,
    };
  }

  factory MoverAgentState.fromMap(Map<String, dynamic> map) {
    return MoverAgentState(
      arcVirtualMachineId: (() { final guardedValue = map['arcVirtualMachineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arcVirtualMachineUuid: (() { final guardedValue = map['arcVirtualMachineUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverId: (() { final guardedValue = map['storageMoverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

