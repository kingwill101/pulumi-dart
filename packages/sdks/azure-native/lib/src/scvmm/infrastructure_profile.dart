// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'checkpoint.dart';

/// Specifies the vmmServer infrastructure specific settings for the virtual machine instance.
class InfrastructureProfile {
  /// Gets or sets the bios guid for the vm.
  final String? biosGuid;
  /// Type of checkpoint supported for the vm.
  final String? checkpointType;
  /// Checkpoints in the vm.
  final List<Checkpoint>? checkpoints;
  /// ARM Id of the cloud resource to use for deploying the vm.
  final String? cloudId;
  /// Gets or sets the generation for the vm.
  final int? generation;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// ARM Id of the template resource to use for deploying the vm.
  final String? templateId;
  /// Unique ID of the virtual machine.
  final String? uuid;
  /// VMName is the name of VM on the SCVMM server.
  final String? vmName;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [InfrastructureProfile].
  /// [biosGuid] Gets or sets the bios guid for the vm.
  /// [checkpointType] Type of checkpoint supported for the vm.
  /// [checkpoints] Checkpoints in the vm.
  /// [cloudId] ARM Id of the cloud resource to use for deploying the vm.
  /// [generation] Gets or sets the generation for the vm.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [templateId] ARM Id of the template resource to use for deploying the vm.
  /// [uuid] Unique ID of the virtual machine.
  /// [vmName] VMName is the name of VM on the SCVMM server.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  InfrastructureProfile({
    this.biosGuid,
    this.checkpointType,
    this.checkpoints,
    this.cloudId,
    this.generation,
    this.inventoryItemId,
    this.templateId,
    this.uuid,
    this.vmName,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosGuid': ?biosGuid,
      'checkpointType': ?checkpointType,
      'checkpoints': ?checkpoints == null ? null : pulumi.Input.encodeList<Checkpoint, Map<String, dynamic>>(checkpoints!, (value) => value.toMap()),
      'cloudId': ?cloudId,
      'generation': ?generation,
      'inventoryItemId': ?inventoryItemId,
      'templateId': ?templateId,
      'uuid': ?uuid,
      'vmName': ?vmName,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory InfrastructureProfile.fromMap(Map<String, dynamic> map) {
    return InfrastructureProfile(
      biosGuid: map['biosGuid'] == null ? null : map['biosGuid'] as String,
      checkpointType: map['checkpointType'] == null ? null : map['checkpointType'] as String,
      checkpoints: map['checkpoints'] == null ? null : pulumi.Input.decodeList<Checkpoint>(map['checkpoints'], (value) => Checkpoint.fromMap((value as Map).cast<String, dynamic>())),
      cloudId: map['cloudId'] == null ? null : map['cloudId'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId'] as String,
      templateId: map['templateId'] == null ? null : map['templateId'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      vmName: map['vmName'] == null ? null : map['vmName'] as String,
      vmmServerId: map['vmmServerId'] == null ? null : map['vmmServerId'] as String,
    );
  }
}

