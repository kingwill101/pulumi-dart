// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_beta.dart';

class SourceDiskEncryptionKeyComputeBeta {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [SourceDiskEncryptionKeyComputeBeta].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKeyComputeBeta({this.diskEncryptionKey, this.sourceDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKeyComputeBeta,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SourceDiskEncryptionKeyComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyComputeBeta(
      diskEncryptionKey: (() {
        final guardedValue = map['diskEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomerEncryptionKeyComputeBeta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceDisk: (() {
        final guardedValue = map['sourceDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
