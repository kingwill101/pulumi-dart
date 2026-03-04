// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_disk_encryption.dart';
import 'data_disk_disk_type.dart';

/// An instance-attached disk resource.
class DataDisk {
  /// Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  final pulumi.Input<DataDiskDiskEncryption>? diskEncryption;

  /// Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  final pulumi.Input<String>? diskSizeGb;

  /// Optional. Input only. Indicates the type of the disk.
  final pulumi.Input<DataDiskDiskType>? diskType;

  /// Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [DataDisk].
  /// [diskEncryption] Optional. Input only. Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// [diskSizeGb] Optional. The size of the disk in GB attached to this VM instance, up to a maximum of 64000 GB (64 TB). If not specified, this defaults to 100.
  /// [diskType] Optional. Input only. Indicates the type of the disk.
  /// [kmsKey] Optional. Input only. The KMS key used to encrypt the disks, only applicable if disk_encryption is CMEK. Format: `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}` Learn more about using your own encryption keys.
  DataDisk({this.diskEncryption, this.diskSizeGb, this.diskType, this.kmsKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryption':
          ?pulumi.Input.mapOptionalInputValue<DataDiskDiskEncryption, String>(
            diskEncryption,
            (value) => value.wireValue,
          ),
      'diskSizeGb': ?diskSizeGb,
      'diskType': ?pulumi.Input.mapOptionalInputValue<DataDiskDiskType, String>(
        diskType,
        (value) => value.wireValue,
      ),
      'kmsKey': ?kmsKey,
    };
  }

  factory DataDisk.fromMap(Map<String, dynamic> map) {
    return DataDisk(
      diskEncryption: (() {
        final guardedValue = map['diskEncryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataDiskDiskEncryption.fromValue(guardedValue as String),
        );
      })(),
      diskSizeGb: (() {
        final guardedValue = map['diskSizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataDiskDiskType.fromValue(guardedValue as String),
        );
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
