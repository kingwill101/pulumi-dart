// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_key_info.dart';
import 'key_encryption_key_info.dart';

/// Recovery disk encryption info (BEK and KEK).
class DiskEncryptionInfo {
  /// The recovery KeyVault reference for secret.
  final DiskEncryptionKeyInfo? diskEncryptionKeyInfo;
  /// The recovery KeyVault reference for key.
  final KeyEncryptionKeyInfo? keyEncryptionKeyInfo;

  /// Creates a new [DiskEncryptionInfo].
  /// [diskEncryptionKeyInfo] The recovery KeyVault reference for secret.
  /// [keyEncryptionKeyInfo] The recovery KeyVault reference for key.
  DiskEncryptionInfo({
    this.diskEncryptionKeyInfo,
    this.keyEncryptionKeyInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeyInfo': ?diskEncryptionKeyInfo == null ? null : diskEncryptionKeyInfo!.toMap(),
      'keyEncryptionKeyInfo': ?keyEncryptionKeyInfo == null ? null : keyEncryptionKeyInfo!.toMap(),
    };
  }

  factory DiskEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionInfo(
      diskEncryptionKeyInfo: map['diskEncryptionKeyInfo'] == null ? null : DiskEncryptionKeyInfo.fromMap((map['diskEncryptionKeyInfo'] as Map).cast<String, dynamic>()),
      keyEncryptionKeyInfo: map['keyEncryptionKeyInfo'] == null ? null : KeyEncryptionKeyInfo.fromMap((map['keyEncryptionKeyInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

