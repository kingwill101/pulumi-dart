// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'location_quota_rule_response.dart';

class QuotaRuleResponse {
  /// The location rules.
  final pulumi.Input<List<LocationQuotaRuleResponse>?>? locationRules;
  /// The quota policy.
  final pulumi.Input<String?>? quotaPolicy;
  /// The required features.
  final pulumi.Input<List<String>?>? requiredFeatures;

  /// Creates a new [QuotaRuleResponse].
  /// [locationRules] The location rules.
  /// [quotaPolicy] The quota policy.
  /// [requiredFeatures] The required features.
  const QuotaRuleResponse({
    this.locationRules,
    this.quotaPolicy,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationRules': ?pulumi.Input.mapOptionalInputValue<List<LocationQuotaRuleResponse>, List<Map<String, dynamic>>>(locationRules, (value) => pulumi.Input.encodeList<LocationQuotaRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quotaPolicy': ?quotaPolicy,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory QuotaRuleResponse.fromMap(Map<String, dynamic> map) {
    return QuotaRuleResponse(
      locationRules: (() { final guardedValue = map['locationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocationQuotaRuleResponse>(guardedValue, (value) => LocationQuotaRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quotaPolicy: (() { final guardedValue = map['quotaPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
