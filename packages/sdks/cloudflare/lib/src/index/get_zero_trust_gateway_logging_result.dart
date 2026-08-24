// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_gateway_logging_settings_by_rule_type.dart';

/// Result data returned by getZeroTrustGatewayLogging.
class GetZeroTrustGatewayLoggingResult {
  final String? accountId;
  /// The ID of this resource.
  final String? id;
  /// Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  final bool? redactPii;
  /// Configure logging settings for each rule type.
  final GetZeroTrustGatewayLoggingSettingsByRuleType? settingsByRuleType;

  /// Creates a new [GetZeroTrustGatewayLoggingResult].
  /// [accountId] Optional.
  /// [id] The ID of this resource.
  /// [redactPii] Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  /// [settingsByRuleType] Configure logging settings for each rule type.
  const GetZeroTrustGatewayLoggingResult({
    this.accountId,
    this.id,
    this.redactPii,
    this.settingsByRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'redactPii': ?redactPii,
      'settingsByRuleType': ?settingsByRuleType?.toMap(),
    };
  }

  factory GetZeroTrustGatewayLoggingResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayLoggingResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redactPii: (() { final guardedValue = map['redactPii']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      settingsByRuleType: (() { final guardedValue = map['settingsByRuleType']; if (guardedValue == null) return null; return GetZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
