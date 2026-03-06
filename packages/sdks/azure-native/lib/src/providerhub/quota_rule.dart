// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_quota_rule.dart';

class QuotaRule {
  /// The location rules.
  final pulumi.Input<List<LocationQuotaRule>>? locationRules;
  /// The quota policy.
  final pulumi.Input<String>? quotaPolicy;
  /// The required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [QuotaRule].
  /// [locationRules] The location rules.
  /// [quotaPolicy] The quota policy.
  /// [requiredFeatures] The required features.
  const QuotaRule({
    this.locationRules,
    this.quotaPolicy,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRules': ?pulumi.Input.mapOptionalInputValue<List<LocationQuotaRule>, List<Map<String, dynamic>>>(locationRules, (value) => pulumi.Input.encodeList<LocationQuotaRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaPolicy': ?quotaPolicy,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory QuotaRule.fromMap(Map<String, dynamic> map) {
    return QuotaRule(
      locationRules: (() { final guardedValue = map['locationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocationQuotaRule>(guardedValue, (value) => LocationQuotaRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaPolicy: (() { final guardedValue = map['quotaPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

