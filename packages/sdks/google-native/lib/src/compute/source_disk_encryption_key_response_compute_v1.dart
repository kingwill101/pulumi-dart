// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_v1.dart';

class SourceDiskEncryptionKeyResponseComputeV1 {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyResponseComputeV1> diskEncryptionKey;
  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String> sourceDisk;

  /// Creates a new [SourceDiskEncryptionKeyResponseComputeV1].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKeyResponseComputeV1({
    required this.diskEncryptionKey,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponseComputeV1, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'sourceDisk': sourceDisk,
    };
  }

  factory SourceDiskEncryptionKeyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyResponseComputeV1(
      diskEncryptionKey: (CustomerEncryptionKeyResponseComputeV1.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      sourceDisk: (map['sourceDisk'] as String).input(),
    );
  }
}

