// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_boot_disk_initialize_params_source_image_encryption_key.dart';
import 'instance_from_machine_image_boot_disk_initialize_params_source_snapshot_encryption_key.dart';

class InstanceFromMachineImageBootDiskInitializeParams {
  /// The architecture of the disk. One of "X86_64" or "ARM64".
  final pulumi.Input<String?>? architecture;
  /// A flag to enable confidential compute mode on boot disk
  final pulumi.Input<bool?>? enableConfidentialCompute;
  /// The image from which this disk was initialised.
  final pulumi.Input<String?>? image;
  /// A set of key/value label pairs assigned to the disk.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int?>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int?>? provisionedThroughput;
  /// A list of short names or selfLinks of zones in which to create a regional disk.
  final pulumi.Input<List<String>?>? replicaZones;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>?>? resourceManagerTags;
  /// A list of selfLinks of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String?>? resourcePolicies;
  /// The size of the image in gigabytes.
  final pulumi.Input<int?>? size;
  /// The snapshot from which this disk was initialised.
  final pulumi.Input<String?>? snapshot;
  /// The encryption key used to decrypt the source image.
  final pulumi.Input<InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey?>? sourceImageEncryptionKey;
  /// The encryption key used to decrypt the source snapshot.
  final pulumi.Input<InstanceFromMachineImageBootDiskInitializeParamsSourceSnapshotEncryptionKey?>? sourceSnapshotEncryptionKey;
  /// The URL of the storage pool in which the new disk is created
  final pulumi.Input<String?>? storagePool;
  /// The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  final pulumi.Input<String?>? type;

  /// Creates a new [InstanceFromMachineImageBootDiskInitializeParams].
  /// [architecture] The architecture of the disk. One of "X86_64" or "ARM64".
  /// [enableConfidentialCompute] A flag to enable confidential compute mode on boot disk
  /// [image] The image from which this disk was initialised.
  /// [labels] A set of key/value label pairs assigned to the disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [replicaZones] A list of short names or selfLinks of zones in which to create a regional disk.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] A list of selfLinks of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [size] The size of the image in gigabytes.
  /// [snapshot] The snapshot from which this disk was initialised.
  /// [sourceImageEncryptionKey] The encryption key used to decrypt the source image.
  /// [sourceSnapshotEncryptionKey] The encryption key used to decrypt the source snapshot.
  /// [storagePool] The URL of the storage pool in which the new disk is created
  /// [type] The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  const InstanceFromMachineImageBootDiskInitializeParams({
    this.architecture,
    this.enableConfidentialCompute,
    this.image,
    this.labels,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.resourceManagerTags,
    this.resourcePolicies,
    this.size,
    this.snapshot,
    this.sourceImageEncryptionKey,
    this.sourceSnapshotEncryptionKey,
    this.storagePool,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'image': ?image,
      'labels': ?labels,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'replicaZones': ?replicaZones,
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageBootDiskInitializeParamsSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'storagePool': ?storagePool,
      'type': ?type,
    };
  }

  factory InstanceFromMachineImageBootDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageBootDiskInitializeParams(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      replicaZones: (() { final guardedValue = map['replicaZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      snapshot: (() { final guardedValue = map['snapshot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageEncryptionKey: (() { final guardedValue = map['sourceImageEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageBootDiskInitializeParamsSourceImageEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceSnapshotEncryptionKey: (() { final guardedValue = map['sourceSnapshotEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
