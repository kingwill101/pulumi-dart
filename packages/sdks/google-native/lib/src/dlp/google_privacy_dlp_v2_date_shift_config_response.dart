// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_crypto_key_response.dart';
import 'google_privacy_dlp_v2_field_id_response.dart';

/// Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
class GooglePrivacyDlpV2DateShiftConfigResponse {
  /// Points to the field that contains the context, for example, an entity id. If set, must also set cryptoKey. If set, shift will be consistent for the given context.
  final pulumi.Input<GooglePrivacyDlpV2FieldIdResponse> context;
  /// Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and crypto_key. If set, must also set context. Can only be applied to table items.
  final pulumi.Input<GooglePrivacyDlpV2CryptoKeyResponse> cryptoKey;
  /// For example, -5 means shift date to at most 5 days back in the past.
  final pulumi.Input<int> lowerBoundDays;
  /// Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. For example, 3 means shift date to at most 3 days into the future.
  final pulumi.Input<int> upperBoundDays;

  /// Creates a new [GooglePrivacyDlpV2DateShiftConfigResponse].
  /// [context] Points to the field that contains the context, for example, an entity id. If set, must also set cryptoKey. If set, shift will be consistent for the given context.
  /// [cryptoKey] Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and crypto_key. If set, must also set context. Can only be applied to table items.
  /// [lowerBoundDays] For example, -5 means shift date to at most 5 days back in the past.
  /// [upperBoundDays] Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. For example, 3 means shift date to at most 3 days into the future.
  GooglePrivacyDlpV2DateShiftConfigResponse({
    required this.context,
    required this.cryptoKey,
    required this.lowerBoundDays,
    required this.upperBoundDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': pulumi.Input.mapInputValue<GooglePrivacyDlpV2FieldIdResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'cryptoKey': pulumi.Input.mapInputValue<GooglePrivacyDlpV2CryptoKeyResponse, Map<String, dynamic>>(cryptoKey, (value) => value.toMap()),
      'lowerBoundDays': lowerBoundDays,
      'upperBoundDays': upperBoundDays,
    };
  }

  factory GooglePrivacyDlpV2DateShiftConfigResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DateShiftConfigResponse(
      context: pulumi.Input.fromValue(GooglePrivacyDlpV2FieldIdResponse.fromMap((map['context']! as Map).cast<String, dynamic>())),
      cryptoKey: pulumi.Input.fromValue(GooglePrivacyDlpV2CryptoKeyResponse.fromMap((map['cryptoKey']! as Map).cast<String, dynamic>())),
      lowerBoundDays: pulumi.Input.fromValue(map['lowerBoundDays'] as int),
      upperBoundDays: pulumi.Input.fromValue(map['upperBoundDays'] as int),
    );
  }
}

