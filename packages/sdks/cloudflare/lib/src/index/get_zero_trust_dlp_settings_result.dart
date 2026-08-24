// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_dlp_settings_payload_logging.dart';

/// Result data returned by getZeroTrustDlpSettings.
class GetZeroTrustDlpSettingsResult {
  final String? accountId;
  /// Whether AI context analysis is enabled at the account level.
  final bool? aiContextAnalysis;
  /// The ID of this resource.
  final String? id;
  /// Whether OCR is enabled at the account level.
  final bool? ocr;
  final GetZeroTrustDlpSettingsPayloadLogging? payloadLogging;

  /// Creates a new [GetZeroTrustDlpSettingsResult].
  /// [accountId] Optional.
  /// [aiContextAnalysis] Whether AI context analysis is enabled at the account level.
  /// [id] The ID of this resource.
  /// [ocr] Whether OCR is enabled at the account level.
  /// [payloadLogging] Optional.
  const GetZeroTrustDlpSettingsResult({
    this.accountId,
    this.aiContextAnalysis,
    this.id,
    this.ocr,
    this.payloadLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiContextAnalysis': ?aiContextAnalysis,
      'id': ?id,
      'ocr': ?ocr,
      'payloadLogging': ?payloadLogging?.toMap(),
    };
  }

  factory GetZeroTrustDlpSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSettingsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aiContextAnalysis: (() { final guardedValue = map['aiContextAnalysis']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocr: (() { final guardedValue = map['ocr']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      payloadLogging: (() { final guardedValue = map['payloadLogging']; if (guardedValue == null) return null; return GetZeroTrustDlpSettingsPayloadLogging.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
