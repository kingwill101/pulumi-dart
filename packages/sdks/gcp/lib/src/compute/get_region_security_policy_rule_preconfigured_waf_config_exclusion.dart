// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>> requestCookies;
  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>> requestHeaders;
  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>> requestQueryParams;
  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  final pulumi.Input<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>> requestUris;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>> targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String> targetRuleSet;

  /// Creates a new [GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion({
    required this.requestCookies,
    required this.requestHeaders,
    required this.requestQueryParams,
    required this.requestUris,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>, List<Map<String, dynamic>>>(requestCookies, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaders': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestQueryParams': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>, List<Map<String, dynamic>>>(requestQueryParams, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUris': pulumi.Input.mapInputValue<List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>, List<Map<String, dynamic>>>(requestUris, (value) => pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRuleIds': targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: (pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(map['requestCookies'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestHeaders: (pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(map['requestHeaders'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestQueryParams: (pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(map['requestQueryParams'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestUris: (pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(map['requestUris'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetRuleIds: ((map['targetRuleIds'] as List).cast<String>()).input(),
      targetRuleSet: (map['targetRuleSet'] as String).input(),
    );
  }
}

