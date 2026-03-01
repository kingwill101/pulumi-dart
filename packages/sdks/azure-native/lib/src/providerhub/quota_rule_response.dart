// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_quota_rule_response.dart';

class QuotaRuleResponse {
  /// The location rules.
  final List<LocationQuotaRuleResponse>? locationRules;
  /// The quota policy.
  final String? quotaPolicy;
  /// The required features.
  final List<String>? requiredFeatures;

  /// Creates a new [QuotaRuleResponse].
  /// [locationRules] The location rules.
  /// [quotaPolicy] The quota policy.
  /// [requiredFeatures] The required features.
  QuotaRuleResponse({
    this.locationRules,
    this.quotaPolicy,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRules': ?locationRules == null ? null : pulumi.Input.encodeList<LocationQuotaRuleResponse, Map<String, dynamic>>(locationRules!, (value) => value.toMap()),
      'quotaPolicy': ?quotaPolicy,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory QuotaRuleResponse.fromMap(Map<String, dynamic> map) {
    return QuotaRuleResponse(
      locationRules: map['locationRules'] == null ? null : pulumi.Input.decodeList<LocationQuotaRuleResponse>(map['locationRules'], (value) => LocationQuotaRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      quotaPolicy: map['quotaPolicy'] == null ? null : map['quotaPolicy'] as String,
      requiredFeatures: map['requiredFeatures'] == null ? null : (map['requiredFeatures'] as List).cast<String>(),
    );
  }
}

