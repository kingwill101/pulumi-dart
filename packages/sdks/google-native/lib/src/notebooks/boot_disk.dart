// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'boot_disk_disk_encryption.dart';
import 'boot_disk_disk_type.dart';

/// The definition of a boot disk.
class BootDisk {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final pulumi.Input<BootDiskDiskEncryption>? diskEncryption;
  /// Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  final pulumi.Input<String>? diskSizeGb;
  /// Optional. Indicates the type of the disk.
  final pulumi.Input<BootDiskDiskType>? diskType;
  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [BootDisk].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  /// [diskType] Optional. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  const BootDisk({
    this.diskEncryption,
    this.diskSizeGb,
    this.diskType,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': ?pulumi.Input.mapOptionalInputValue<BootDiskDiskEncryption, String>(diskEncryption, (value) => value.wireValue),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?pulumi.Input.mapOptionalInputValue<BootDiskDiskType, String>(diskType, (value) => value.wireValue),
      'kmsKey': ?kmsKey,
    };
  }

  factory BootDisk.fromMap(Map<String, dynamic> map) {
    return BootDisk(
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDiskDiskEncryption.fromValue(guardedValue as String)); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BootDiskDiskType.fromValue(guardedValue as String)); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
