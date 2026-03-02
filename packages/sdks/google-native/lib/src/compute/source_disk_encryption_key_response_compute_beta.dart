// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response_compute_beta.dart';

class SourceDiskEncryptionKeyResponseComputeBeta {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyResponseComputeBeta> diskEncryptionKey;
  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String> sourceDisk;

  /// Creates a new [SourceDiskEncryptionKeyResponseComputeBeta].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKeyResponseComputeBeta({
    required this.diskEncryptionKey,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': pulumi.Input.mapInputValue<CustomerEncryptionKeyResponseComputeBeta, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'sourceDisk': sourceDisk,
    };
  }

  factory SourceDiskEncryptionKeyResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyResponseComputeBeta(
      diskEncryptionKey: (CustomerEncryptionKeyResponseComputeBeta.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      sourceDisk: (map['sourceDisk'] as String).input(),
    );
  }
}

