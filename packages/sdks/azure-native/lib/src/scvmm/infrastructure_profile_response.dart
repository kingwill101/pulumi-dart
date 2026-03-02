// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'checkpoint_response.dart';

/// Specifies the vmmServer infrastructure specific settings for the virtual machine instance.
class InfrastructureProfileResponse {
  /// Gets or sets the bios guid for the vm.
  final pulumi.Input<String>? biosGuid;
  /// Type of checkpoint supported for the vm.
  final pulumi.Input<String>? checkpointType;
  /// Checkpoints in the vm.
  final pulumi.Input<List<CheckpointResponse>>? checkpoints;
  /// ARM Id of the cloud resource to use for deploying the vm.
  final pulumi.Input<String>? cloudId;
  /// Gets or sets the generation for the vm.
  final pulumi.Input<int>? generation;
  /// Gets or sets the inventory Item ID for the resource.
  final pulumi.Input<String>? inventoryItemId;
  /// Last restored checkpoint in the vm.
  final pulumi.Input<CheckpointResponse> lastRestoredVMCheckpoint;
  /// ARM Id of the template resource to use for deploying the vm.
  final pulumi.Input<String>? templateId;
  /// Unique ID of the virtual machine.
  final pulumi.Input<String>? uuid;
  /// VMName is the name of VM on the SCVMM server.
  final pulumi.Input<String>? vmName;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [InfrastructureProfileResponse].
  /// [biosGuid] Gets or sets the bios guid for the vm.
  /// [checkpointType] Type of checkpoint supported for the vm.
  /// [checkpoints] Checkpoints in the vm.
  /// [cloudId] ARM Id of the cloud resource to use for deploying the vm.
  /// [generation] Gets or sets the generation for the vm.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [lastRestoredVMCheckpoint] Last restored checkpoint in the vm.
  /// [templateId] ARM Id of the template resource to use for deploying the vm.
  /// [uuid] Unique ID of the virtual machine.
  /// [vmName] VMName is the name of VM on the SCVMM server.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  InfrastructureProfileResponse({
    this.biosGuid,
    this.checkpointType,
    this.checkpoints,
    this.cloudId,
    this.generation,
    this.inventoryItemId,
    required this.lastRestoredVMCheckpoint,
    this.templateId,
    this.uuid,
    this.vmName,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'biosGuid': ?biosGuid,
      'checkpointType': ?checkpointType,
      'checkpoints': ?pulumi.Input.mapOptionalInputValue<List<CheckpointResponse>, List<Map<String, dynamic>>>(checkpoints, (value) => pulumi.Input.encodeList<CheckpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudId': ?cloudId,
      'generation': ?generation,
      'inventoryItemId': ?inventoryItemId,
      'lastRestoredVMCheckpoint': pulumi.Input.mapInputValue<CheckpointResponse, Map<String, dynamic>>(lastRestoredVMCheckpoint, (value) => value.toMap()),
      'templateId': ?templateId,
      'uuid': ?uuid,
      'vmName': ?vmName,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory InfrastructureProfileResponse.fromMap(Map<String, dynamic> map) {
    return InfrastructureProfileResponse(
      biosGuid: map['biosGuid'] == null ? null : (map['biosGuid']! as String).input(),
      checkpointType: map['checkpointType'] == null ? null : (map['checkpointType']! as String).input(),
      checkpoints: map['checkpoints'] == null ? null : (pulumi.Input.decodeList<CheckpointResponse>(map['checkpoints']!, (value) => CheckpointResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudId: map['cloudId'] == null ? null : (map['cloudId']! as String).input(),
      generation: map['generation'] == null ? null : (map['generation']! as int).input(),
      inventoryItemId: map['inventoryItemId'] == null ? null : (map['inventoryItemId']! as String).input(),
      lastRestoredVMCheckpoint: (CheckpointResponse.fromMap((map['lastRestoredVMCheckpoint'] as Map).cast<String, dynamic>())).input(),
      templateId: map['templateId'] == null ? null : (map['templateId']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
      vmName: map['vmName'] == null ? null : (map['vmName']! as String).input(),
      vmmServerId: map['vmmServerId'] == null ? null : (map['vmmServerId']! as String).input(),
    );
  }
}

