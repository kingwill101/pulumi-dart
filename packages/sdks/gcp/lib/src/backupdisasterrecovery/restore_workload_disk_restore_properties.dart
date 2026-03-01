// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_disk_restore_properties_disk_encryption_key.dart';
import 'restore_workload_disk_restore_properties_guest_os_feature.dart';
import 'restore_workload_disk_restore_properties_label.dart';
import 'restore_workload_disk_restore_properties_resource_manager_tag.dart';

class RestoreWorkloadDiskRestoreProperties {
  /// Optional. The access mode of the disk.
  /// Possible values are: `READ_WRITE_SINGLE`, `READ_WRITE_MANY`, `READ_ONLY_MANY`.
  final String? accessMode;
  /// Optional. The architecture of the source disk.
  /// Possible values are: `ARCHITECTURE_UNSPECIFIED`, `X86_64`, `ARM64`.
  final String? architecture;
  /// Optional. An optional description of this resource.
  final String? description;
  /// Optional. Encrypts the disk using a customer-supplied encryption key.
  /// Structure is documented below.
  final RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey? diskEncryptionKey;
  /// Optional. Indicates whether this disk is using confidential compute mode.
  final bool? enableConfidentialCompute;
  /// Optional. A list of features to enable in the guest operating system.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>? guestOsFeatures;
  /// Optional. Labels to apply to this disk.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesLabel>? labels;
  /// Optional. A list of publicly available licenses that are applicable to this backup.
  final List<String>? licenses;
  /// Required. Name of the disk.
  final String name;
  /// Optional. Physical block size of the persistent disk, in bytes.
  final int? physicalBlockSizeBytes;
  /// Optional. Indicates how many IOPS to provision for the disk.
  final int? provisionedIops;
  /// Optional. Indicates how much throughput to provision for the disk.
  final int? provisionedThroughput;
  /// Optional. Resource manager tags to be bound to the disk.
  /// Structure is documented below.
  final List<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>? resourceManagerTags;
  /// Optional. Resource policies applied to this disk.
  final List<String>? resourcePolicies;
  /// Required. The size of the disk in GB.
  final int sizeGb;
  /// Optional. The storage pool in which the new disk is created.
  final String? storagePool;
  /// Required. URL of the disk type resource describing which disk type to use.
  final String type;

  /// Creates a new [RestoreWorkloadDiskRestoreProperties].
  /// [accessMode] Optional. The access mode of the disk.
  /// [architecture] Optional. The architecture of the source disk.
  /// [description] Optional. An optional description of this resource.
  /// [diskEncryptionKey] Optional. Encrypts the disk using a customer-supplied encryption key.
  /// [enableConfidentialCompute] Optional. Indicates whether this disk is using confidential compute mode.
  /// [guestOsFeatures] Optional. A list of features to enable in the guest operating system.
  /// [labels] Optional. Labels to apply to this disk.
  /// [licenses] Optional. A list of publicly available licenses that are applicable to this backup.
  /// [name] Required. Name of the disk.
  /// [physicalBlockSizeBytes] Optional. Physical block size of the persistent disk, in bytes.
  /// [provisionedIops] Optional. Indicates how many IOPS to provision for the disk.
  /// [provisionedThroughput] Optional. Indicates how much throughput to provision for the disk.
  /// [resourceManagerTags] Optional. Resource manager tags to be bound to the disk.
  /// [resourcePolicies] Optional. Resource policies applied to this disk.
  /// [sizeGb] Required. The size of the disk in GB.
  /// [storagePool] Optional. The storage pool in which the new disk is created.
  /// [type] Required. URL of the disk type resource describing which disk type to use.
  RestoreWorkloadDiskRestoreProperties({
    this.accessMode,
    this.architecture,
    this.description,
    this.diskEncryptionKey,
    this.enableConfidentialCompute,
    this.guestOsFeatures,
    this.labels,
    this.licenses,
    required this.name,
    this.physicalBlockSizeBytes,
    this.provisionedIops,
    this.provisionedThroughput,
    this.resourceManagerTags,
    this.resourcePolicies,
    required this.sizeGb,
    this.storagePool,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'architecture': ?architecture,
      'description': ?description,
      'diskEncryptionKey': ?diskEncryptionKey == null ? null : diskEncryptionKey!.toMap(),
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'guestOsFeatures': ?guestOsFeatures == null ? null : pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesGuestOsFeature, Map<String, dynamic>>(guestOsFeatures!, (value) => value.toMap()),
      'labels': ?labels == null ? null : pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesLabel, Map<String, dynamic>>(labels!, (value) => value.toMap()),
      'licenses': ?licenses,
      'name': name,
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?resourceManagerTags == null ? null : pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesResourceManagerTag, Map<String, dynamic>>(resourceManagerTags!, (value) => value.toMap()),
      'resourcePolicies': ?resourcePolicies,
      'sizeGb': sizeGb,
      'storagePool': ?storagePool,
      'type': type,
    };
  }

  factory RestoreWorkloadDiskRestoreProperties.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestoreProperties(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      architecture: map['architecture'] == null ? null : map['architecture'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : map['enableConfidentialCompute'] as bool,
      guestOsFeatures: map['guestOsFeatures'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>(map['guestOsFeatures'], (value) => RestoreWorkloadDiskRestorePropertiesGuestOsFeature.fromMap((value as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesLabel>(map['labels'], (value) => RestoreWorkloadDiskRestorePropertiesLabel.fromMap((value as Map).cast<String, dynamic>())),
      licenses: map['licenses'] == null ? null : (map['licenses'] as List).cast<String>(),
      name: map['name'] as String,
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null ? null : map['physicalBlockSizeBytes'] as int,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null ? null : map['provisionedThroughput'] as int,
      resourceManagerTags: map['resourceManagerTags'] == null ? null : pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>(map['resourceManagerTags'], (value) => RestoreWorkloadDiskRestorePropertiesResourceManagerTag.fromMap((value as Map).cast<String, dynamic>())),
      resourcePolicies: map['resourcePolicies'] == null ? null : (map['resourcePolicies'] as List).cast<String>(),
      sizeGb: map['sizeGb'] as int,
      storagePool: map['storagePool'] == null ? null : map['storagePool'] as String,
      type: map['type'] as String,
    );
  }
}

