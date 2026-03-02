// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator.dart';
import 'attached_disk.dart';
import 'disk.dart';
import 'instance_policy_provisioning_model.dart';

/// InstancePolicy describes an instance type and resources attached to each VM created by this InstancePolicy.
class InstancePolicy {
  /// The accelerators attached to each VM instance.
  final pulumi.Input<List<Accelerator>>? accelerators;
  /// Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted. Batch API now only supports booting from image.
  final pulumi.Input<Disk>? bootDisk;
  /// Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted. A non-boot disk is a disk that can be of a device with a file system or a raw storage drive that is not ready for data storage and accessing.
  final pulumi.Input<List<AttachedDisk>>? disks;
  /// The Compute Engine machine type.
  final pulumi.Input<String>? machineType;
  /// The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  final pulumi.Input<String>? minCpuPlatform;
  /// The provisioning model.
  final pulumi.Input<InstancePolicyProvisioningModel>? provisioningModel;
  /// Optional. If specified, VMs will consume only the specified reservation. If not specified (default), VMs will consume any applicable reservation.
  final pulumi.Input<String>? reservation;

  /// Creates a new [InstancePolicy].
  /// [accelerators] The accelerators attached to each VM instance.
  /// [bootDisk] Boot disk to be created and attached to each VM by this InstancePolicy. Boot disk will be deleted when the VM is deleted. Batch API now only supports booting from image.
  /// [disks] Non-boot disks to be attached for each VM created by this InstancePolicy. New disks will be deleted when the VM is deleted. A non-boot disk is a disk that can be of a device with a file system or a raw storage drive that is not ready for data storage and accessing.
  /// [machineType] The Compute Engine machine type.
  /// [minCpuPlatform] The minimum CPU platform. See https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  /// [provisioningModel] The provisioning model.
  /// [reservation] Optional. If specified, VMs will consume only the specified reservation. If not specified (default), VMs will consume any applicable reservation.
  InstancePolicy({
    this.accelerators,
    this.bootDisk,
    this.disks,
    this.machineType,
    this.minCpuPlatform,
    this.provisioningModel,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<Accelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<Accelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<Disk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'disks': ?pulumi.Input.mapOptionalInputValue<List<AttachedDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<AttachedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineType': ?machineType,
      'minCpuPlatform': ?minCpuPlatform,
      'provisioningModel': ?pulumi.Input.mapOptionalInputValue<InstancePolicyProvisioningModel, String>(provisioningModel, (value) => value.value),
      'reservation': ?reservation,
    };
  }

  factory InstancePolicy.fromMap(Map<String, dynamic> map) {
    return InstancePolicy(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<Accelerator>(map['accelerators'], (value) => Accelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bootDisk: map['bootDisk'] == null ? null : (Disk.fromMap((map['bootDisk'] as Map).cast<String, dynamic>())).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<AttachedDisk>(map['disks'], (value) => AttachedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineType: map['machineType'] == null ? null : (map['machineType'] as String).input(),
      minCpuPlatform: map['minCpuPlatform'] == null ? null : (map['minCpuPlatform'] as String).input(),
      provisioningModel: map['provisioningModel'] == null ? null : (InstancePolicyProvisioningModel.fromValue(map['provisioningModel'] as String)).input(),
      reservation: map['reservation'] == null ? null : (map['reservation'] as String).input(),
    );
  }
}

