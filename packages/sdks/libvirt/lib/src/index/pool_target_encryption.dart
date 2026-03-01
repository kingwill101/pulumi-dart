// ignore_for_file: unused_element, unnecessary_cast

import 'pool_target_encryption_cipher.dart';
import 'pool_target_encryption_ivgen.dart';
import 'pool_target_encryption_secret.dart';

class PoolTargetEncryption {
  /// Sets the encryption cipher for the storage volume to be applied.
  final PoolTargetEncryptionCipher? cipher;
  /// Defines the format of the encryption for the storage volume.
  final String format;
  /// Controls the initialization vector generation settings for the encryption.
  final PoolTargetEncryptionIvgen? ivgen;
  /// Provides the configuration for the secret used in the encryption process.
  final PoolTargetEncryptionSecret? secret;

  /// Creates a new [PoolTargetEncryption].
  /// [cipher] Sets the encryption cipher for the storage volume to be applied.
  /// [format] Defines the format of the encryption for the storage volume.
  /// [ivgen] Controls the initialization vector generation settings for the encryption.
  /// [secret] Provides the configuration for the secret used in the encryption process.
  PoolTargetEncryption({
    this.cipher,
    required this.format,
    this.ivgen,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?cipher == null ? null : cipher!.toMap(),
      'format': format,
      'ivgen': ?ivgen == null ? null : ivgen!.toMap(),
      'secret': ?secret == null ? null : secret!.toMap(),
    };
  }

  factory PoolTargetEncryption.fromMap(Map<String, dynamic> map) {
    return PoolTargetEncryption(
      cipher: map['cipher'] == null ? null : PoolTargetEncryptionCipher.fromMap((map['cipher'] as Map).cast<String, dynamic>()),
      format: map['format'] as String,
      ivgen: map['ivgen'] == null ? null : PoolTargetEncryptionIvgen.fromMap((map['ivgen'] as Map).cast<String, dynamic>()),
      secret: map['secret'] == null ? null : PoolTargetEncryptionSecret.fromMap((map['secret'] as Map).cast<String, dynamic>()),
    );
  }
}

