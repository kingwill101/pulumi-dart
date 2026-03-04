// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicated_vmmanaged_disk_target_disk_encryption_disk_encryption_key.dart';
import 'replicated_vmmanaged_disk_target_disk_encryption_key_encryption_key.dart';

class ReplicatedVMManagedDiskTargetDiskEncryption {
  /// A `disk_encryption_key` block as defined below.
  final pulumi.Input<
    ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey
  >
  diskEncryptionKey;

  /// A `key_encryption_key` block as defined below.
  final pulumi.Input<
    ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey
  >?
  keyEncryptionKey;

  /// Creates a new [ReplicatedVMManagedDiskTargetDiskEncryption].
  /// [diskEncryptionKey] A `disk_encryption_key` block as defined below.
  /// [keyEncryptionKey] A `key_encryption_key` block as defined below.
  ReplicatedVMManagedDiskTargetDiskEncryption({
    required this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey':
          pulumi.Input.mapInputValue<
            ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'keyEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey,
            Map<String, dynamic>
          >(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory ReplicatedVMManagedDiskTargetDiskEncryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return ReplicatedVMManagedDiskTargetDiskEncryption(
      diskEncryptionKey: pulumi.Input.fromValue(
        ReplicatedVMManagedDiskTargetDiskEncryptionDiskEncryptionKey.fromMap(
          (map['diskEncryptionKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      keyEncryptionKey: (() {
        final guardedValue = map['keyEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ReplicatedVMManagedDiskTargetDiskEncryptionKeyEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
