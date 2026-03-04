// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key.dart';

class SourceDiskEncryptionKey {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKey>? diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String>? sourceDisk;

  /// Creates a new [SourceDiskEncryptionKey].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKey({this.diskEncryptionKey, this.sourceDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKey,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'sourceDisk': ?sourceDisk,
    };
  }

  factory SourceDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKey(
      diskEncryptionKey: (() {
        final guardedValue = map['diskEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomerEncryptionKey.fromMap(
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
