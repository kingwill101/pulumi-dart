// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_target_encryption_cipher.dart';
import 'volume_target_encryption_ivgen.dart';
import 'volume_target_encryption_secret.dart';

class VolumeTargetEncryption {
  /// Sets the encryption cipher for the storage volume to be applied.
  final pulumi.Input<VolumeTargetEncryptionCipher>? cipher;
  /// Defines the format of the encryption for the storage volume.
  final pulumi.Input<String> format;
  /// Controls the initialization vector generation settings for the encryption.
  final pulumi.Input<VolumeTargetEncryptionIvgen>? ivgen;
  /// Provides the configuration for the secret used in the encryption process.
  final pulumi.Input<VolumeTargetEncryptionSecret>? secret;

  /// Creates a new [VolumeTargetEncryption].
  /// [cipher] Sets the encryption cipher for the storage volume to be applied.
  /// [format] Defines the format of the encryption for the storage volume.
  /// [ivgen] Controls the initialization vector generation settings for the encryption.
  /// [secret] Provides the configuration for the secret used in the encryption process.
  VolumeTargetEncryption({
    this.cipher,
    required this.format,
    this.ivgen,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': ?pulumi.Input.mapOptionalInputValue<VolumeTargetEncryptionCipher, Map<String, dynamic>>(cipher, (value) => value.toMap()),
      'format': format,
      'ivgen': ?pulumi.Input.mapOptionalInputValue<VolumeTargetEncryptionIvgen, Map<String, dynamic>>(ivgen, (value) => value.toMap()),
      'secret': ?pulumi.Input.mapOptionalInputValue<VolumeTargetEncryptionSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory VolumeTargetEncryption.fromMap(Map<String, dynamic> map) {
    return VolumeTargetEncryption(
      cipher: map['cipher'] == null ? null : (VolumeTargetEncryptionCipher.fromMap((map['cipher']! as Map).cast<String, dynamic>())).input(),
      format: (map['format'] as String).input(),
      ivgen: map['ivgen'] == null ? null : (VolumeTargetEncryptionIvgen.fromMap((map['ivgen']! as Map).cast<String, dynamic>())).input(),
      secret: map['secret'] == null ? null : (VolumeTargetEncryptionSecret.fromMap((map['secret']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

