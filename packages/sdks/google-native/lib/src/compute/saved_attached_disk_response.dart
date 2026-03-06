// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response.dart';
import 'guest_os_feature_response.dart';

/// DEPRECATED: Please use compute#savedDisk instead. An instance-attached disk resource.
class SavedAttachedDiskResponse {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final pulumi.Input<bool> autoDelete;
  /// Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  final pulumi.Input<bool> boot;
  /// Specifies the name of the disk attached to the source instance.
  final pulumi.Input<String> deviceName;
  /// The encryption key for the disk.
  final pulumi.Input<CustomerEncryptionKeyResponse> diskEncryptionKey;
  /// The size of the disk in base-2 GB.
  final pulumi.Input<String> diskSizeGb;
  /// URL of the disk type resource. For example: projects/project /zones/zone/diskTypes/pd-standard or pd-ssd
  final pulumi.Input<String> diskType;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeatureResponse>> guestOsFeatures;
  /// Specifies zero-based index of the disk that is attached to the source instance.
  final pulumi.Input<int> index;
  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME.
  final pulumi.Input<String> interface;
  /// Type of the resource. Always compute#attachedDisk for attached disks.
  final pulumi.Input<String> kind;
  /// Any valid publicly visible licenses.
  final pulumi.Input<List<String>> licenses;
  /// The mode in which this disk is attached to the source instance, either READ_WRITE or READ_ONLY.
  final pulumi.Input<String> mode;
  /// Specifies a URL of the disk attached to the source instance.
  final pulumi.Input<String> source;
  /// A size of the storage used by the disk's snapshot by this machine image.
  final pulumi.Input<String> storageBytes;
  /// An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  final pulumi.Input<String> storageBytesStatus;
  /// Specifies the type of the attached disk, either SCRATCH or PERSISTENT.
  final pulumi.Input<String> type;

  /// Creates a new [SavedAttachedDiskResponse].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [boot] Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  /// [deviceName] Specifies the name of the disk attached to the source instance.
  /// [diskEncryptionKey] The encryption key for the disk.
  /// [diskSizeGb] The size of the disk in base-2 GB.
  /// [diskType] URL of the disk type resource. For example: projects/project /zones/zone/diskTypes/pd-standard or pd-ssd
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [index] Specifies zero-based index of the disk that is attached to the source instance.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME.
  /// [kind] Type of the resource. Always compute#attachedDisk for attached disks.
  /// [licenses] Any valid publicly visible licenses.
  /// [mode] The mode in which this disk is attached to the source instance, either READ_WRITE or READ_ONLY.
  /// [source] Specifies a URL of the disk attached to the source instance.
  /// [storageBytes] A size of the storage used by the disk's snapshot by this machine image.
  /// [storageBytesStatus] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  /// [type] Specifies the type of the attached disk, either SCRATCH or PERSISTENT.
  const SavedAttachedDiskResponse({
    required this.autoDelete,
    required this.boot,
    required this.deviceName,
    required this.diskEncryptionKey,
    required this.diskSizeGb,
    required this.diskType,
    required this.guestOsFeatures,
    required this.index,
    required this.interface,
    required this.kind,
    required this.licenses,
    required this.mode,
    required this.source,
    required this.storageBytes,
    required this.storageBytesStatus,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': autoDelete,
      'boot': boot,
      'deviceName': deviceName,
      'diskEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponse, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'guestOsFeatures': pulumi.Input.mapInputValue<List<GuestOsFeatureResponse>, List<Map<String, dynamic>>>(guestOsFeatures, (value) => pulumi.Input.encodeList<GuestOsFeatureResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'index': index,
      'interface': interface,
      'kind': kind,
      'licenses': licenses,
      'mode': mode,
      'source': source,
      'storageBytes': storageBytes,
      'storageBytesStatus': storageBytesStatus,
      'type': type,
    };
  }

  factory SavedAttachedDiskResponse.fromMap(Map<String, dynamic> map) {
    return SavedAttachedDiskResponse(
      autoDelete: pulumi.Input.fromValue(map['autoDelete'] as bool),
      boot: pulumi.Input.fromValue(map['boot'] as bool),
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      diskEncryptionKey: pulumi.Input.fromValue(CustomerEncryptionKeyResponse.fromMap((map['diskEncryptionKey']! as Map).cast<String, dynamic>())),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      guestOsFeatures: pulumi.Input.fromValue(pulumi.Input.decodeList<GuestOsFeatureResponse>(map['guestOsFeatures']!, (value) => GuestOsFeatureResponse.fromMap((value as Map).cast<String, dynamic>()))),
      index: pulumi.Input.fromValue(map['index'] as int),
      interface: pulumi.Input.fromValue(map['interface'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      licenses: pulumi.Input.fromValue((map['licenses'] as List).cast<String>()),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      storageBytes: pulumi.Input.fromValue(map['storageBytes'] as String),
      storageBytesStatus: pulumi.Input.fromValue(map['storageBytesStatus'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

