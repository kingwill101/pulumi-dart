// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The definition of a boot disk.
class BootDiskResponse {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final pulumi.Input<String> diskEncryption;
  /// Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  final pulumi.Input<String> diskSizeGb;
  /// Optional. Indicates the type of the disk.
  final pulumi.Input<String> diskType;
  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [BootDiskResponse].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the boot disk in GB attached to this instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the recommended value of 150GB.
  /// [diskType] Optional. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  const BootDiskResponse({
    required this.diskEncryption,
    required this.diskSizeGb,
    required this.diskType,
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption': diskEncryption,
      'diskSizeGb': diskSizeGb,
      'diskType': diskType,
      'kmsKey': kmsKey,
    };
  }

  factory BootDiskResponse.fromMap(Map<String, dynamic> map) {
    return BootDiskResponse(
      diskEncryption: pulumi.Input.fromValue(map['diskEncryption'] as String),
      diskSizeGb: pulumi.Input.fromValue(map['diskSizeGb'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}

