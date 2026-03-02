// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_encryption_drm_systems.dart';
import 'job_template_config_encryption_mpeg_cenc.dart';
import 'job_template_config_encryption_secret_manager_key_source.dart';

class JobTemplateConfigEncryption {
  /// Configuration for AES-128 encryption.
  final pulumi.Input<Map<String, dynamic>>? aes128;
  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigEncryptionDrmSystems>? drmSystems;
  /// Identifier for this set of encryption options.
  final pulumi.Input<String> id;
  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigEncryptionMpegCenc>? mpegCenc;
  /// Configuration for SAMPLE-AES encryption.
  final pulumi.Input<Map<String, dynamic>>? sampleAes;
  /// Configuration for secrets stored in Google Secret Manager.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigEncryptionSecretManagerKeySource>? secretManagerKeySource;

  /// Creates a new [JobTemplateConfigEncryption].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [id] Identifier for this set of encryption options.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Configuration for secrets stored in Google Secret Manager.
  JobTemplateConfigEncryption({
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
      'drmSystems': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigEncryptionDrmSystems, Map<String, dynamic>>(drmSystems, (value) => value.toMap()),
      'id': id,
      'mpegCenc': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigEncryptionMpegCenc, Map<String, dynamic>>(mpegCenc, (value) => value.toMap()),
      'sampleAes': ?sampleAes,
      'secretManagerKeySource': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigEncryptionSecretManagerKeySource, Map<String, dynamic>>(secretManagerKeySource, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfigEncryption.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigEncryption(
      aes128: map['aes128'] == null ? null : ((map['aes128'] as Map).cast<String, dynamic>()).input(),
      drmSystems: map['drmSystems'] == null ? null : (JobTemplateConfigEncryptionDrmSystems.fromMap((map['drmSystems'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
      mpegCenc: map['mpegCenc'] == null ? null : (JobTemplateConfigEncryptionMpegCenc.fromMap((map['mpegCenc'] as Map).cast<String, dynamic>())).input(),
      sampleAes: map['sampleAes'] == null ? null : ((map['sampleAes'] as Map).cast<String, dynamic>()).input(),
      secretManagerKeySource: map['secretManagerKeySource'] == null ? null : (JobTemplateConfigEncryptionSecretManagerKeySource.fromMap((map['secretManagerKeySource'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

