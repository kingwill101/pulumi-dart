// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_logging_settings_by_rule_type.dart';

/// Input properties used for looking up and filtering ZeroTrustGatewayLogging resources.
class ZeroTrustGatewayLoggingState {
  final pulumi.Input<String?>? accountId;
  /// Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  final pulumi.Input<bool?>? redactPii;
  /// Configure logging settings for each rule type.
  final pulumi.Input<ZeroTrustGatewayLoggingSettingsByRuleType?>? settingsByRuleType;

  /// Creates a new [ZeroTrustGatewayLoggingState].
  /// [accountId] Optional.
  /// [redactPii] Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  /// [settingsByRuleType] Configure logging settings for each rule type.
  const ZeroTrustGatewayLoggingState({
    this.accountId,
    this.redactPii,
    this.settingsByRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'redactPii': ?redactPii,
      'settingsByRuleType': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayLoggingSettingsByRuleType, Map<String, dynamic>>(settingsByRuleType, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewayLoggingState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayLoggingState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redactPii: (() { final guardedValue = map['redactPii']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settingsByRuleType: (() { final guardedValue = map['settingsByRuleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
