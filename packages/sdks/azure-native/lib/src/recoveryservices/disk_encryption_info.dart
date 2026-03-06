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
  const DiskEncryptionInfo({
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
      diskEncryptionKeyInfo: (() { final guardedValue = map['diskEncryptionKeyInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DiskEncryptionKeyInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyEncryptionKeyInfo: (() { final guardedValue = map['keyEncryptionKeyInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyEncryptionKeyInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

