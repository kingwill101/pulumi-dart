// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_response.dart';

class SourceDiskEncryptionKeyResponse {
  /// The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyResponse> diskEncryptionKey;

  /// URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  final pulumi.Input<String> sourceDisk;

  /// Creates a new [SourceDiskEncryptionKeyResponse].
  /// [diskEncryptionKey] The customer-supplied encryption key of the source disk. Required if the source disk is protected by a customer-supplied encryption key.
  /// [sourceDisk] URL of the disk attached to the source instance. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - projects/project/zones/zone/disks/disk - zones/zone/disks/disk
  SourceDiskEncryptionKeyResponse({
    required this.diskEncryptionKey,
    required this.sourceDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey':
          pulumi.Input.mapInputValue<
            CustomerEncryptionKeyResponse,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'sourceDisk': sourceDisk,
    };
  }

  factory SourceDiskEncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return SourceDiskEncryptionKeyResponse(
      diskEncryptionKey: pulumi.Input.fromValue(
        CustomerEncryptionKeyResponse.fromMap(
          (map['diskEncryptionKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      sourceDisk: pulumi.Input.fromValue(map['sourceDisk'] as String),
    );
  }
}
