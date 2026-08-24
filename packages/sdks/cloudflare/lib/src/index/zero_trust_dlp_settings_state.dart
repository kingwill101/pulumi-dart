// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_settings_payload_logging.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpSettings resources.
class ZeroTrustDlpSettingsState {
  final pulumi.Input<String?>? accountId;
  /// Whether AI context analysis is enabled at the account level.
  final pulumi.Input<bool?>? aiContextAnalysis;
  /// Whether OCR is enabled at the account level.
  final pulumi.Input<bool?>? ocr;
  /// Request model for payload log settings within the DLP settings endpoint.
  /// Unlike the legacy endpoint, null and missing are treated identically here
  /// (both mean "not provided" for PATCH, "reset to default" for PUT).
  final pulumi.Input<ZeroTrustDlpSettingsPayloadLogging?>? payloadLogging;

  /// Creates a new [ZeroTrustDlpSettingsState].
  /// [accountId] Optional.
  /// [aiContextAnalysis] Whether AI context analysis is enabled at the account level.
  /// [ocr] Whether OCR is enabled at the account level.
  /// [payloadLogging] Request model for payload log settings within the DLP settings endpoint.
  const ZeroTrustDlpSettingsState({
    this.accountId,
    this.aiContextAnalysis,
    this.ocr,
    this.payloadLogging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'aiContextAnalysis': ?aiContextAnalysis,
      'ocr': ?ocr,
      'payloadLogging': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpSettingsPayloadLogging, Map<String, dynamic>>(payloadLogging, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDlpSettingsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aiContextAnalysis: (() { final guardedValue = map['aiContextAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ocr: (() { final guardedValue = map['ocr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      payloadLogging: (() { final guardedValue = map['payloadLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpSettingsPayloadLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
