// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'drm_systems_response.dart';
import 'mpeg_common_encryption_response.dart';
import 'secret_manager_source_response.dart';

/// Encryption settings.
class EncryptionResponse {
  /// Configuration for AES-128 encryption.
  final pulumi.Input<Map<String, dynamic>> aes128;
  /// DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  final pulumi.Input<DrmSystemsResponse> drmSystems;
  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  final pulumi.Input<MpegCommonEncryptionResponse> mpegCenc;
  /// Configuration for SAMPLE-AES encryption.
  final pulumi.Input<Map<String, dynamic>> sampleAes;
  /// Keys are stored in Google Secret Manager.
  final pulumi.Input<SecretManagerSourceResponse> secretManagerKeySource;

  /// Creates a new [EncryptionResponse].
  /// [aes128] Configuration for AES-128 encryption.
  /// [drmSystems] DRM system(s) to use; at least one must be specified. If a DRM system is omitted, it is considered disabled.
  /// [mpegCenc] Configuration for MPEG Common Encryption (MPEG-CENC).
  /// [sampleAes] Configuration for SAMPLE-AES encryption.
  /// [secretManagerKeySource] Keys are stored in Google Secret Manager.
  const EncryptionResponse({
    required this.aes128,
    required this.drmSystems,
    required this.mpegCenc,
    required this.sampleAes,
    required this.secretManagerKeySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aes128': aes128,
      'drmSystems': pulumi.Input.mapInputValue<DrmSystemsResponse, Map<String, dynamic>>(drmSystems, (value) => value.toMap()),
      'mpegCenc': pulumi.Input.mapInputValue<MpegCommonEncryptionResponse, Map<String, dynamic>>(mpegCenc, (value) => value.toMap()),
      'sampleAes': sampleAes,
      'secretManagerKeySource': pulumi.Input.mapInputValue<SecretManagerSourceResponse, Map<String, dynamic>>(secretManagerKeySource, (value) => value.toMap()),
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      aes128: pulumi.Input.fromValue((map['aes128']! as Map).cast<String, dynamic>()),
      drmSystems: pulumi.Input.fromValue(DrmSystemsResponse.fromMap((map['drmSystems']! as Map).cast<String, dynamic>())),
      mpegCenc: pulumi.Input.fromValue(MpegCommonEncryptionResponse.fromMap((map['mpegCenc']! as Map).cast<String, dynamic>())),
      sampleAes: pulumi.Input.fromValue((map['sampleAes']! as Map).cast<String, dynamic>()),
      secretManagerKeySource: pulumi.Input.fromValue(SecretManagerSourceResponse.fromMap((map['secretManagerKeySource']! as Map).cast<String, dynamic>())),
    );
  }
}

