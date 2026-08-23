// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_target_encryption_cipher.dart';
import 'pool_target_encryption_ivgen.dart';
import 'pool_target_encryption_secret.dart';

class PoolTargetEncryption {
  /// Sets the encryption cipher for the storage volume to be applied.
  final pulumi.Input<PoolTargetEncryptionCipher>? cipher;
  /// Defines the format of the encryption for the storage volume.
  final pulumi.Input<String> format;
  /// Controls the initialization vector generation settings for the encryption.
  final pulumi.Input<PoolTargetEncryptionIvgen>? ivgen;
  /// Provides the configuration for the secret used in the encryption process.
  final pulumi.Input<PoolTargetEncryptionSecret>? secret;

  /// Creates a new [PoolTargetEncryption].
  /// [cipher] Sets the encryption cipher for the storage volume to be applied.
  /// [format] Defines the format of the encryption for the storage volume.
  /// [ivgen] Controls the initialization vector generation settings for the encryption.
  /// [secret] Provides the configuration for the secret used in the encryption process.
  const PoolTargetEncryption({
    this.cipher,
    required this.format,
    this.ivgen,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?pulumi.Input.mapOptionalInputValue<PoolTargetEncryptionCipher, Map<String, dynamic>>(cipher, (value) => value.toMap()),
      'format': format,
      'ivgen': ?pulumi.Input.mapOptionalInputValue<PoolTargetEncryptionIvgen, Map<String, dynamic>>(ivgen, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<PoolTargetEncryptionSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory PoolTargetEncryption.fromMap(Map<String, dynamic> map) {
    return PoolTargetEncryption(
      cipher: (() { final guardedValue = map['cipher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTargetEncryptionCipher.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: pulumi.Input.fromValue(map['format'] as String),
      ivgen: (() { final guardedValue = map['ivgen']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTargetEncryptionIvgen.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PoolTargetEncryptionSecret.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
