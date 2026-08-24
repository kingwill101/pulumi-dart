// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_logging_settings_by_rule_type.dart';

/// {@template pulumi_index_zero_trust_gateway_logging_zero_trust_gateway_logging_args_doc}
/// The set of arguments for ZeroTrustGatewayLogging.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_gateway_logging_zero_trust_gateway_logging_args_doc}
class ZeroTrustGatewayLoggingArgs {
  final pulumi.Input<String> accountId;
  /// Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  final pulumi.Input<bool?>? redactPii;
  /// Configure logging settings for each rule type.
  final pulumi.Input<ZeroTrustGatewayLoggingSettingsByRuleType?>? settingsByRuleType;

  /// Creates a new [ZeroTrustGatewayLoggingArgs].
  /// [accountId] Required.
  /// [redactPii] Indicate whether to redact personally identifiable information from activity logging (PII fields include source IP, user email, user ID, device ID, URL, referrer, and user agent).
  /// [settingsByRuleType] Configure logging settings for each rule type.
  const ZeroTrustGatewayLoggingArgs({
    required this.accountId,
    this.redactPii,
    this.settingsByRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'redactPii': ?redactPii,
      'settingsByRuleType': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewayLoggingSettingsByRuleType, Map<String, dynamic>>(settingsByRuleType, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewayLoggingArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayLoggingArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      redactPii: (() { final guardedValue = map['redactPii']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      settingsByRuleType: (() { final guardedValue = map['settingsByRuleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewayLoggingSettingsByRuleType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
