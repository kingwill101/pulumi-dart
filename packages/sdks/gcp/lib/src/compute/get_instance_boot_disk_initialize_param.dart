// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_boot_disk_initialize_param_source_image_encryption_key.dart';
import 'get_instance_boot_disk_initialize_param_source_snapshot_encryption_key.dart';

class GetInstanceBootDiskInitializeParam {
  /// The architecture of the disk. One of "X86_64" or "ARM64".
  final pulumi.Input<String> architecture;
  /// A flag to enable confidential compute mode on boot disk
  final pulumi.Input<bool> enableConfidentialCompute;
  /// The image from which this disk was initialised.
  final pulumi.Input<String> image;
  /// A set of key/value label pairs assigned to the disk.
  final pulumi.Input<Map<String, String>> labels;
  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  final pulumi.Input<int> provisionedIops;
  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  final pulumi.Input<int> provisionedThroughput;
  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  final pulumi.Input<Map<String, String>> resourceManagerTags;
  /// A list of self_links to resource policies attached to the selected `boot_disk`
  final pulumi.Input<List<String>> resourcePolicies;
  /// The size of the image in gigabytes.
  final pulumi.Input<int> size;
  /// The snapshot from which this disk was initialised.
  final pulumi.Input<String> snapshot;
  /// The encryption key used to decrypt the source image.
  final pulumi.Input<List<GetInstanceBootDiskInitializeParamSourceImageEncryptionKey>> sourceImageEncryptionKeys;
  /// The encryption key used to decrypt the source snapshot.
  final pulumi.Input<List<GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey>> sourceSnapshotEncryptionKeys;
  /// The URL of the storage pool in which the new disk is created
  final pulumi.Input<String> storagePool;
  /// The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  final pulumi.Input<String> type;

  /// Creates a new [GetInstanceBootDiskInitializeParam].
  /// [architecture] The architecture of the disk. One of "X86_64" or "ARM64".
  /// [enableConfidentialCompute] A flag to enable confidential compute mode on boot disk
  /// [image] The image from which this disk was initialised.
  /// [labels] A set of key/value label pairs assigned to the disk.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle.
  /// [resourceManagerTags] A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT & PATCH) when empty.
  /// [resourcePolicies] A list of self_links to resource policies attached to the selected `boot_disk`
  /// [size] The size of the image in gigabytes.
  /// [snapshot] The snapshot from which this disk was initialised.
  /// [sourceImageEncryptionKeys] The encryption key used to decrypt the source image.
  /// [sourceSnapshotEncryptionKeys] The encryption key used to decrypt the source snapshot.
  /// [storagePool] The URL of the storage pool in which the new disk is created
  /// [type] The accelerator type resource exposed to this instance. E.g. `nvidia-tesla-k80`.
  GetInstanceBootDiskInitializeParam({
    required this.architecture,
    required this.enableConfidentialCompute,
    required this.image,
    required this.labels,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.resourceManagerTags,
    required this.resourcePolicies,
    required this.size,
    required this.snapshot,
    required this.sourceImageEncryptionKeys,
    required this.sourceSnapshotEncryptionKeys,
    required this.storagePool,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'enableConfidentialCompute': enableConfidentialCompute,
      'image': image,
      'labels': labels,
      'provisionedIops': provisionedIops,
      'provisionedThroughput': provisionedThroughput,
      'resourceManagerTags': resourceManagerTags,
      'resourcePolicies': resourcePolicies,
      'size': size,
      'snapshot': snapshot,
      'sourceImageEncryptionKeys': pulumi.Input.mapInputValue<List<GetInstanceBootDiskInitializeParamSourceImageEncryptionKey>, List<Map<String, dynamic>>>(sourceImageEncryptionKeys, (value) => pulumi.Input.encodeList<GetInstanceBootDiskInitializeParamSourceImageEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceSnapshotEncryptionKeys': pulumi.Input.mapInputValue<List<GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey>, List<Map<String, dynamic>>>(sourceSnapshotEncryptionKeys, (value) => pulumi.Input.encodeList<GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storagePool': storagePool,
      'type': type,
    };
  }

  factory GetInstanceBootDiskInitializeParam.fromMap(Map<String, dynamic> map) {
    return GetInstanceBootDiskInitializeParam(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      enableConfidentialCompute: pulumi.Input.fromValue(map['enableConfidentialCompute'] as bool),
      image: pulumi.Input.fromValue(map['image'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      provisionedIops: pulumi.Input.fromValue(map['provisionedIops'] as int),
      provisionedThroughput: pulumi.Input.fromValue(map['provisionedThroughput'] as int),
      resourceManagerTags: pulumi.Input.fromValue((map['resourceManagerTags'] as Map).cast<String, String>()),
      resourcePolicies: pulumi.Input.fromValue((map['resourcePolicies'] as List).cast<String>()),
      size: pulumi.Input.fromValue(map['size'] as int),
      snapshot: pulumi.Input.fromValue(map['snapshot'] as String),
      sourceImageEncryptionKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceBootDiskInitializeParamSourceImageEncryptionKey>(map['sourceImageEncryptionKeys']!, (value) => GetInstanceBootDiskInitializeParamSourceImageEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))),
      sourceSnapshotEncryptionKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey>(map['sourceSnapshotEncryptionKeys']!, (value) => GetInstanceBootDiskInitializeParamSourceSnapshotEncryptionKey.fromMap((value as Map).cast<String, dynamic>()))),
      storagePool: pulumi.Input.fromValue(map['storagePool'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

