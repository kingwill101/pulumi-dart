// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_encryption_drm_systems.dart';
import 'job_config_encryption_mpeg_cenc.dart';
import 'job_config_encryption_secret_manager_key_source.dart';

class JobConfigEncryption {
  /// Configuration for AES-128 encryption.
  final pulumi.Input<Map<String, dynamic>>? aes128;
  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// Structure is documented below.
  final pulumi.Input<JobConfigEncryptionDrmSystems>? drmSystems;
  /// Identifier for this set of encryption options.
  final pulumi.Input<String> id;
  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  /// Structure is documented below.
  final pulumi.Input<JobConfigEncryptionMpegCenc>? mpegCenc;
  /// Configuration for SAMPLE-AES encryption.
  final pulumi.Input<Map<String, dynamic>>? sampleAes;
  /// Configuration for secrets stored in Google Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<JobConfigEncryptionSecretManagerKeySource>? secretManagerKeySource;

  /// Creates a new [JobConfigEncryption].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [id] Identifier for this set of encryption options.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Configuration for secrets stored in Google Secret Manager.
  const JobConfigEncryption({
    this.aes128,
    this.drmSystems,
    required this.id,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aes128': ?aes128,
      'drmSystems': ?pulumi.Input.mapOptionalInputValue<JobConfigEncryptionDrmSystems, Map<String, dynamic>>(drmSystems, (value) => value.toMap()),
      'id': id,
      'mpegCenc': ?pulumi.Input.mapOptionalInputValue<JobConfigEncryptionMpegCenc, Map<String, dynamic>>(mpegCenc, (value) => value.toMap()),
      'sampleAes': ?sampleAes,
      'secretManagerKeySource': ?pulumi.Input.mapOptionalInputValue<JobConfigEncryptionSecretManagerKeySource, Map<String, dynamic>>(secretManagerKeySource, (value) => value.toMap()),
    };
  }

  factory JobConfigEncryption.fromMap(Map<String, dynamic> map) {
    return JobConfigEncryption(
      aes128: (() { final guardedValue = map['aes128']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      drmSystems: (() { final guardedValue = map['drmSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigEncryptionDrmSystems.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      mpegCenc: (() { final guardedValue = map['mpegCenc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigEncryptionMpegCenc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sampleAes: (() { final guardedValue = map['sampleAes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      secretManagerKeySource: (() { final guardedValue = map['secretManagerKeySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigEncryptionSecretManagerKeySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
