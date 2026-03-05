// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_boot_disk_initialize_params.dart';

class InstanceBootDisk {
  /// Whether the disk will be auto-deleted when the instance
  /// is deleted. Defaults to true.
  final pulumi.Input<bool>? autoDelete;
  /// Name with which attached disk will be accessible.
  /// On the instance, this device will be `/dev/disk/by-id/google-{{device_name}}`.
  final pulumi.Input<String>? deviceName;
  /// A 256-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption),
  /// encoded in [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final pulumi.Input<String>? diskEncryptionKeyRaw;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) to encrypt this disk. Only one of `kms_key_self_link`, `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  final pulumi.Input<String>? diskEncryptionKeyRsa;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key]
  /// (https://cloud.google.com/compute/docs/disks/customer-supplied-encryption) that protects this resource.
  final pulumi.Input<String>? diskEncryptionKeySha256;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? diskEncryptionServiceAccount;
  /// boolean field that determines whether to force attach the regional
  /// disk even if it's currently attached to another instance. If you try to force attach a zonal
  /// disk to an instance, you will receive an error. Setting this parameter cause VM recreation.
  final pulumi.Input<bool>? forceAttach;
  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  final pulumi.Input<List<String>>? guestOsFeatures;
  /// Parameters for a new disk that will be created
  /// alongside the new instance. Either `initialize_params` or `source` must be set.
  /// Structure is documented below.
  final pulumi.Input<InstanceBootDiskInitializeParams>? initializeParams;
  /// The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  final pulumi.Input<String>? interface;
  /// The self_link of the encryption key that is
  /// stored in Google Cloud KMS to encrypt this disk. Only one of `kms_key_self_link`,
  /// `disk_encryption_key_rsa` and `disk_encryption_key_raw`
  /// may be set.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The mode in which to attach this disk, either `READ_WRITE`
  /// or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode.
  final pulumi.Input<String>? mode;
  /// The name or self_link of the existing disk (such as those managed by
  /// `gcp.compute.Disk`) or disk image. To create an instance from a snapshot, first create a
  /// `gcp.compute.Disk` from a snapshot and reference it here.
  final pulumi.Input<String>? source;

  /// Creates a new [InstanceBootDisk].
  /// [autoDelete] Whether the disk will be auto-deleted when the instance
  /// [deviceName] Name with which attached disk will be accessible.
  /// [diskEncryptionKeyRaw] A 256-bit [customer-supplied encryption key]
  /// [diskEncryptionKeyRsa] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit [customer-supplied encryption key]
  /// [diskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [diskEncryptionServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [forceAttach] boolean field that determines whether to force attach the regional
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options.
  /// [initializeParams] Parameters for a new disk that will be created
  /// [interface] The disk interface used for attaching this disk. One of SCSI or NVME. (This field is shared with attached_disk and only used for specific cases, please don't specify this field without advice from Google.)
  /// [kmsKeySelfLink] The self_link of the encryption key that is
  /// [mode] The mode in which to attach this disk, either `READ_WRITE`
  /// [source] The name or self_link of the existing disk (such as those managed by
  InstanceBootDisk({
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
      'initializeParams': ?pulumi.Input.mapOptionalInputValue<InstanceBootDiskInitializeParams, Map<String, dynamic>>(initializeParams, (value) => value.toMap()),
      'interface': ?interface,
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'mode': ?mode,
      'source': ?source,
    };
  }

  factory InstanceBootDisk.fromMap(Map<String, dynamic> map) {
    return InstanceBootDisk(
      autoDelete: (() { final guardedValue = map['autoDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceName: (() { final guardedValue = map['deviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKeyRaw: (() { final guardedValue = map['diskEncryptionKeyRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKeyRsa: (() { final guardedValue = map['diskEncryptionKeyRsa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionKeySha256: (() { final guardedValue = map['diskEncryptionKeySha256']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskEncryptionServiceAccount: (() { final guardedValue = map['diskEncryptionServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceAttach: (() { final guardedValue = map['forceAttach']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      guestOsFeatures: (() { final guardedValue = map['guestOsFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      initializeParams: (() { final guardedValue = map['initializeParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceBootDiskInitializeParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interface: (() { final guardedValue = map['interface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeySelfLink: (() { final guardedValue = map['kmsKeySelfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

