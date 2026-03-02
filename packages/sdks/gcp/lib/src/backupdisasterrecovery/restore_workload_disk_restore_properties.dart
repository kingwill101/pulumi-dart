// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_disk_restore_properties_disk_encryption_key.dart';
import 'restore_workload_disk_restore_properties_guest_os_feature.dart';
import 'restore_workload_disk_restore_properties_label.dart';
import 'restore_workload_disk_restore_properties_resource_manager_tag.dart';

class RestoreWorkloadDiskRestoreProperties {
  /// Optional. The access mode of the disk.
  /// Possible values are: `READ_WRITE_SINGLE`, `READ_WRITE_MANY`, `READ_ONLY_MANY`.
  final pulumi.Input<String>? accessMode;
  /// Optional. The architecture of the source disk.
  /// Possible values are: `ARCHITECTURE_UNSPECIFIED`, `X86_64`, `ARM64`.
  final pulumi.Input<String>? architecture;
  /// Optional. An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Optional. Encrypts the disk using a customer-supplied encryption key.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey>? diskEncryptionKey;
  /// Optional. Indicates whether this disk is using confidential compute mode.
  final pulumi.Input<bool>? enableConfidentialCompute;
  /// Optional. A list of features to enable in the guest operating system.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>>? guestOsFeatures;
  /// Optional. Labels to apply to this disk.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadDiskRestorePropertiesLabel>>? labels;
  /// Optional. A list of publicly available licenses that are applicable to this backup.
  final pulumi.Input<List<String>>? licenses;
  /// Required. Name of the disk.
  final pulumi.Input<String> name;
  /// Optional. Physical block size of the persistent disk, in bytes.
  final pulumi.Input<int>? physicalBlockSizeBytes;
  /// Optional. Indicates how many IOPS to provision for the disk.
  final pulumi.Input<int>? provisionedIops;
  /// Optional. Indicates how much throughput to provision for the disk.
  final pulumi.Input<int>? provisionedThroughput;
  /// Optional. Resource manager tags to be bound to the disk.
  /// Structure is documented below.
  final pulumi.Input<List<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>>? resourceManagerTags;
  /// Optional. Resource policies applied to this disk.
  final pulumi.Input<List<String>>? resourcePolicies;
  /// Required. The size of the disk in GB.
  final pulumi.Input<int> sizeGb;
  /// Optional. The storage pool in which the new disk is created.
  final pulumi.Input<String>? storagePool;
  /// Required. URL of the disk type resource describing which disk type to use.
  final pulumi.Input<String> type;

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
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'guestOsFeatures': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesGuestOsFeature, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labels': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadDiskRestorePropertiesLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenses': ?licenses,
      'name': name,
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'resourceManagerTags': ?pulumi.Input.mapOptionalInputValue<List<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>, List<Map<String, dynamic>>>(resourceManagerTags, (value) => pulumi.Input.encodeList<RestoreWorkloadDiskRestorePropertiesResourceManagerTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourcePolicies': ?resourcePolicies,
      'sizeGb': sizeGb,
      'storagePool': ?storagePool,
      'type': type,
    };
  }

  factory RestoreWorkloadDiskRestoreProperties.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestoreProperties(
      accessMode: map['accessMode'] == null ? null : (map['accessMode'] as String).input(),
      architecture: map['architecture'] == null ? null : (map['architecture'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : (RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null ? null : (map['enableConfidentialCompute'] as bool).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>(map['guestOsFeatures'], (value) => RestoreWorkloadDiskRestorePropertiesGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesLabel>(map['labels'], (value) => RestoreWorkloadDiskRestorePropertiesLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenses: map['licenses'] == null ? null : ((map['licenses'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null ? null : (map['physicalBlockSizeBytes'] as int).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops'] as int).input(),
      provisionedThroughput: map['provisionedThroughput'] == null ? null : (map['provisionedThroughput'] as int).input(),
      resourceManagerTags: map['resourceManagerTags'] == null ? null : (pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>(map['resourceManagerTags'], (value) => RestoreWorkloadDiskRestorePropertiesResourceManagerTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourcePolicies: map['resourcePolicies'] == null ? null : ((map['resourcePolicies'] as List).cast<String>()).input(),
      sizeGb: (map['sizeGb'] as int).input(),
      storagePool: map['storagePool'] == null ? null : (map['storagePool'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

