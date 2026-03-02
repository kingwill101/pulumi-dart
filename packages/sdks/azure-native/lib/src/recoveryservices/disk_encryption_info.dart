// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_key_info.dart';
import 'key_encryption_key_info.dart';

/// Recovery disk encryption info (BEK and KEK).
class DiskEncryptionInfo {
  /// The recovery KeyVault reference for secret.
  final pulumi.Input<DiskEncryptionKeyInfo>? diskEncryptionKeyInfo;
  /// The recovery KeyVault reference for key.
  final pulumi.Input<KeyEncryptionKeyInfo>? keyEncryptionKeyInfo;

  /// Creates a new [DiskEncryptionInfo].
  /// [diskEncryptionKeyInfo] The recovery KeyVault reference for secret.
  /// [keyEncryptionKeyInfo] The recovery KeyVault reference for key.
  DiskEncryptionInfo({
    this.diskEncryptionKeyInfo,
    this.keyEncryptionKeyInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKeyInfo': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionKeyInfo, Map<String, dynamic>>(diskEncryptionKeyInfo, (value) => value.toMap()),
      'keyEncryptionKeyInfo': ?pulumi.Input.mapOptionalInputValue<KeyEncryptionKeyInfo, Map<String, dynamic>>(keyEncryptionKeyInfo, (value) => value.toMap()),
    };
  }

  factory DiskEncryptionInfo.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionInfo(
      diskEncryptionKeyInfo: map['diskEncryptionKeyInfo'] == null ? null : (DiskEncryptionKeyInfo.fromMap((map['diskEncryptionKeyInfo']! as Map).cast<String, dynamic>())).input(),
      keyEncryptionKeyInfo: map['keyEncryptionKeyInfo'] == null ? null : (KeyEncryptionKeyInfo.fromMap((map['keyEncryptionKeyInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

