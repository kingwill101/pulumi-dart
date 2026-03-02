// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_boot_disk_initialize_params_source_image_encryption_key.dart';
import 'instance_from_template_boot_disk_initialize_params_source_snapshot_encryption_key.dart';

class InstanceFromTemplateBootDiskInitializeParams {
  /// The architecture of the disk. One of "X86_64" or "ARM64".
  final pulumi.Input<String>? architecture;
  /// A flag to enable confidential compute mode on boot disk
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// The image from which this disk was initialised.
  final pulumi.Input<String>? image;
  /// A set of key/value label pairs assigned to the disk.
  final pulumi.Input<Map<String, String>>? labels;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int>? provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int>? provisionedThroughput;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>>? resourceManagerTags;
  /// A list of self_links of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  final pulumi.Input<String>? resourcePolicies;
  /// The size of the image in gigabytes.
  final pulumi.Input<int>? size;
  /// The snapshot from which this disk was initialised.
  final pulumi.Input<String>? snapshot;
  /// The encryption key used to decrypt the source image.
  final pulumi.Input<InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey>? sourceImageEncryptionKey;
  /// The encryption key used to decrypt the source snapshot.
  final pulumi.Input<InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey>? sourceSnapshotEncryptionKey;
  /// The URL of the storage pool in which the new disk is created
  final pulumi.Input<String>? storagePool;
  /// The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  final pulumi.Input<String>? type;

  /// Creates a new [InstanceFromTemplateBootDiskInitializeParams].
  /// [architecture] The architecture of the disk. One of "X86_64" or "ARM64".
  /// [enableConfidentialCompute] A flag to enable confidential compute mode on boot disk
  /// [image] The image from which this disk was initialised.
  /// [labels] A set of key/value label pairs assigned to the disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] A list of self_links of resource policies to attach to the instance's boot disk. Modifying this list will cause the instance to recreate. Currently a max of 1 resource policy is supported.
  /// [size] The size of the image in gigabytes.
  /// [snapshot] The snapshot from which this disk was initialised.
  /// [sourceImageEncryptionKey] The encryption key used to decrypt the source image.
  /// [sourceSnapshotEncryptionKey] The encryption key used to decrypt the source snapshot.
  /// [storagePool] The URL of the storage pool in which the new disk is created
  /// [type] The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced.
  InstanceFromTemplateBootDiskInitializeParams({
    this.architecture,
    this.enableConfidentialCompute,
    this.image,
    this.labels,
    this.provisionedIops,
    this.provisionedThroughput,
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
      'resourceManagerTags': ?resourceManagerTags,
      'resourcePolicies': ?resourcePolicies,
      'size': ?size,
      'snapshot': ?snapshot,
      'sourceImageEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey, Map<String, dynamic>>(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceSnapshotEncryptionKey': ?pulumi.Input.mapOptionalInputValue<InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey, Map<String, dynamic>>(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'storagePool': ?storagePool,
      'type': ?type,
    };
  }

  factory InstanceFromTemplateBootDiskInitializeParams.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateBootDiskInitializeParams(
      architecture: map['architecture'] == null ? null : (map['architecture']! as String).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute']! as bool).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops']! as int).input(),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : (map['provisionedThroughput']! as int).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : ((map['resourceManagerTags']! as Map).cast<String, String>()).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      snapshot: map['snapshot'] == null ? null : (map['snapshot']! as String).input(),
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null ? null : (InstanceFromTemplateBootDiskInitializeParamsSourceImageEncryptionKey.fromMap((map['sourceImageEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null ? null : (InstanceFromTemplateBootDiskInitializeParamsSourceSnapshotEncryptionKey.fromMap((map['sourceSnapshotEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      storagePool: map['storagePool'] == null ? null : (map['storagePool']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

