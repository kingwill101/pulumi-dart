// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_response_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1 {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>> requestCookiesToExclude;
  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>> requestHeadersToExclude;
  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>> requestQueryParamsToExclude;
  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final pulumi.Input<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>> requestUrisToExclude;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>> targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String> targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1({
    required this.requestCookiesToExclude,
    required this.requestHeadersToExclude,
    required this.requestQueryParamsToExclude,
    required this.requestUrisToExclude,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookiesToExclude': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>, List<Map<String, dynamic>>>(requestCookiesToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeadersToExclude': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>, List<Map<String, dynamic>>>(requestHeadersToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestQueryParamsToExclude': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>, List<Map<String, dynamic>>>(requestQueryParamsToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUrisToExclude': pulumi.Input.mapInputValue<List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>, List<Map<String, dynamic>>>(requestUrisToExclude, (value) => pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRuleIds': targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeV1(
      requestCookiesToExclude: (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>(map['requestCookiesToExclude'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeadersToExclude: (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>(map['requestHeadersToExclude'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestQueryParamsToExclude: (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>(map['requestQueryParamsToExclude'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestUrisToExclude: (pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1>(map['requestUrisToExclude'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetRuleIds: ((map['targetRuleIds'] as List).cast<String>()).input(),
      targetRuleSet: (map['targetRuleSet'] as String).input(),
    );
  }
}

