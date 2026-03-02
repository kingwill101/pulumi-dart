// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_boot_disk_initialize_params.dart';

class InstanceFromMachineImageBootDisk {
  /// Whether the disk will be auto-deleted when the instance is deleted.
  final pulumi.Input<bool>? autoDelete;
  /// Name with which attached disk will be accessible under /dev/disk/by-id/
  final pulumi.Input<String>? deviceName;
  /// A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final pulumi.Input<String>? diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final pulumi.Input<String>? diskEncryptionKeyRsa;
  /// The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  final pulumi.Input<String>? diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  final pulumi.Input<String>? diskEncryptionServiceAccount;
  /// Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final pulumi.Input<bool>? forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images.
  final pulumi.Input<List<String>>? guestOsFeatures;
  /// Parameters with which a disk was created alongside the instance.
  final pulumi.Input<InstanceFromMachineImageBootDiskInitializeParams>? initializeParams;
  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  final pulumi.Input<String>? interface;
  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  final pulumi.Input<String>? mode;
  /// The name or self_link of the disk attached to this instance.
  final pulumi.Input<String>? source;

  /// Creates a new [InstanceFromMachineImageBootDisk].
  /// [autoDelete] Whether the disk will be auto-deleted when the instance is deleted.
  /// [deviceName] Name with which attached disk will be accessible under /dev/disk/by-id/
  /// [diskEncryptionKeyRaw] A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [diskEncryptionKeySha256] The RFC 4648 base64 encoded SHA-256 hash of the customer-supplied encryption key that protects this resource.
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used
  /// [forceAttach] Whether to force attach the regional disk even if it's currently attached to another instance. If you try to force attach a zonal disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images.
  /// [initializeParams] Parameters with which a disk was created alongside the instance.
  /// [interface] The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  /// [kmsKeySelfLink] The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  /// [mode] Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  /// [source] The name or self_link of the disk attached to this instance.
  InstanceFromMachineImageBootDisk({
    this.autoDelete,
    this.deviceName,
    this.diskEncryptionKeyRaw,
    this.diskEncryptionKeyRsa,
    this.diskEncryptionKeySha256,
    this.diskEncryptionServiceAccount,
    this.forceAttach,
    this.guestOsFeatures,
    this.initializeParams,
    this.interface,
    this.kmsKeySelfLink,
    this.mode,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDelete': ?autoDelete,
      'deviceName': ?deviceName,
      'diskEncryptionKeyRaw': ?diskEncryptionKeyRaw,
      'diskEncryptionKeyRsa': ?diskEncryptionKeyRsa,
      'diskEncryptionKeySha256': ?diskEncryptionKeySha256,
      'diskEncryptionServiceAccount': ?diskEncryptionServiceAccount,
      'forceAttach': ?forceAttach,
      'guestOsFeatures': ?guestOsFeatures,
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageBootDiskInitializeParams, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?interface,
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': ?source,
    };
  }

  factory InstanceFromMachineImageBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageBootDisk(
      autoDelete: map['autoDelete'] == null ? null : (map['autoDelete'] as bool).input(),
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      diskEncryptionKeyRaw: map['diskEncryptionKeyRaw'] == null ? null : (map['diskEncryptionKeyRaw'] as String).input(),
      diskEncryptionKeyRsa: map['diskEncryptionKeyRsa'] == null ? null : (map['diskEncryptionKeyRsa'] as String).input(),
      diskEncryptionKeySha256: map['diskEncryptionKeySha256'] == null ? null : (map['diskEncryptionKeySha256'] as String).input(),
      diskEncryptionServiceAccount: map['diskEncryptionServiceAccount'] == null ? null : (map['diskEncryptionServiceAccount'] as String).input(),
      forceAttach: map['forceAttach'] == null ? null : (map['forceAttach'] as bool).input(),
      guestOsFeatures: map['guestOsFeatures'] == null ? null : ((map['guestOsFeatures'] as List).cast<String>()).input(),
      initializeParams: map['initializeParams'] == null ? null : (InstanceFromMachineImageBootDiskInitializeParams.fromMap((map['initializeParams'] as Map).cast<String, dynamic>())).input(),
      interface: map['interface'] == null ? null : (map['interface'] as String).input(),
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : (map['kmsKeySelfLink'] as String).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

