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
      accessMode: (() { final guardedValue = map['accessMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadDiskRestorePropertiesDiskEncryptionKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableConfidentialCompute: (() { final guardedValue = map['enableConfidentialCompute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesGuestOsFeature>(guardedValue, (value) => RestoreWorkloadDiskRestorePropertiesGuestOsFeature.fromMap((value as Map).cast<String, dynamic>()))); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesLabel>(guardedValue, (value) => RestoreWorkloadDiskRestorePropertiesLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      physicalBlockSizeBytes: (() { final guardedValue = map['physicalBlockSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedIops: (() { final guardedValue = map['provisionedIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedThroughput: (() { final guardedValue = map['provisionedThroughput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceManagerTags: (() { final guardedValue = map['resourceManagerTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreWorkloadDiskRestorePropertiesResourceManagerTag>(guardedValue, (value) => RestoreWorkloadDiskRestorePropertiesResourceManagerTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
      storagePool: (() { final guardedValue = map['storagePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

