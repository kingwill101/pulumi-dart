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
  QuotaRule({
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
      locationRules: map['locationRules'] == null ? null : (pulumi.Input.decodeList<LocationQuotaRule>(map['locationRules'], (value) => LocationQuotaRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quotaPolicy: map['quotaPolicy'] == null ? null : (map['quotaPolicy'] as String).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
    );
  }
}

