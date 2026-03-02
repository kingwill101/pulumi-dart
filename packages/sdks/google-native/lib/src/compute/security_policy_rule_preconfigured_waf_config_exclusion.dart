// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>>? requestCookiesToExclude;
  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>>? requestHeadersToExclude;
  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>>? requestQueryParamsToExclude;
  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>>? requestUrisToExclude;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>>? targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String>? targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.requestCookiesToExclude,
    this.requestHeadersToExclude,
    this.requestQueryParamsToExclude,
    this.requestUrisToExclude,
    this.targetRuleIds,
    this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookiesToExclude': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>, List<Map<String, dynamic>>>(requestCookiesToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToExclude': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>, List<Map<String, dynamic>>>(requestHeadersToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestQueryParamsToExclude': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>, List<Map<String, dynamic>>>(requestQueryParamsToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUrisToExclude': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>, List<Map<String, dynamic>>>(requestUrisToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': ?targetRuleSet,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookiesToExclude: map['requestCookiesToExclude'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(map['requestCookiesToExclude']!, (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeadersToExclude: map['requestHeadersToExclude'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(map['requestHeadersToExclude']!, (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestQueryParamsToExclude: map['requestQueryParamsToExclude'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(map['requestQueryParamsToExclude']!, (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestUrisToExclude: map['requestUrisToExclude'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(map['requestUrisToExclude']!, (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetRuleIds: map['targetRuleIds'] == null ? null : ((map['targetRuleIds']! as List).cast<String>()).input(),
      targetRuleSet: map['targetRuleSet'] == null ? null : (map['targetRuleSet']! as String).input(),
    );
  }
}

