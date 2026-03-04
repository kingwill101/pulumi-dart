// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_template_boot_disk_initialize_params.dart';

class InstanceFromTemplateBootDisk {
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
  final pulumi.Input<InstanceFromTemplateBootDiskInitializeParams>?
  initializeParams;

  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  final pulumi.Input<String>? interface;

  /// The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link, disk_encryption_key_raw and disk_encryption_key_rsa may be set.
  final pulumi.Input<String>? kmsKeySelfLink;

  /// Read/write mode for the disk. One of "READ_ONLY" or "READ_WRITE".
  final pulumi.Input<String>? mode;

  /// The name or self_link of the disk attached to this instance.
  final pulumi.Input<String>? source;

  /// Creates a new [InstanceFromTemplateBootDisk].
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
  InstanceFromTemplateBootDisk({
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
      'initializeParams':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceFromTemplateBootDiskInitializeParams,
            Map<String, dynamic>
          >(initializeParams, (value) => value.toMap()),
      'interface': ?interface,
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': ?source,
    };
  }

  factory InstanceFromTemplateBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateBootDisk(
      autoDelete: (() {
        final guardedValue = map['autoDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deviceName: (() {
        final guardedValue = map['deviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionKeyRaw: (() {
        final guardedValue = map['diskEncryptionKeyRaw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionKeyRsa: (() {
        final guardedValue = map['diskEncryptionKeyRsa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionKeySha256: (() {
        final guardedValue = map['diskEncryptionKeySha256'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskEncryptionServiceAccount: (() {
        final guardedValue = map['diskEncryptionServiceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceAttach: (() {
        final guardedValue = map['forceAttach'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      guestOsFeatures: (() {
        final guardedValue = map['guestOsFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      initializeParams: (() {
        final guardedValue = map['initializeParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceFromTemplateBootDiskInitializeParams.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      interface: (() {
        final guardedValue = map['interface'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeySelfLink: (() {
        final guardedValue = map['kmsKeySelfLink'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
