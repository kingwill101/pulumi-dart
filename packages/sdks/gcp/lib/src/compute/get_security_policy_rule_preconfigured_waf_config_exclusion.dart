// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_preconfigured_waf_config_exclusion_request_body.dart';
import 'get_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'get_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'get_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'get_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class GetSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// A list of request body fields to be excluded from inspection during\npreconfigured WAF evaluation.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBody>> requestBodies;
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>> requestCookies;
  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>> requestHeaders;
  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.  Note that the parameter can be in the query string or in the POST body.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>> requestQueryParams;
  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>> requestUris;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>> targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String> targetRuleSet;

  /// Creates a new [GetSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestBodies] A list of request body fields to be excluded from inspection during\npreconfigured WAF evaluation.
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.  Note that the parameter can be in the query string or in the POST body.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  const GetSecurityPolicyRulePreconfiguredWafConfigExclusion({
    required this.requestBodies,
    required this.requestCookies,
    required this.requestHeaders,
    required this.requestQueryParams,
    required this.requestUris,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBodies': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBody>, List<Map<String, dynamic>>>(requestBodies, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBody, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestCookies': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>, List<Map<String, dynamic>>>(requestCookies, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaders': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestQueryParams': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>, List<Map<String, dynamic>>>(requestQueryParams, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUris': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>, List<Map<String, dynamic>>>(requestUris, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRuleIds': targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory GetSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestBodies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBody>(map['requestBodies']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBody.fromMap((value as Map).cast<String, dynamic>()))),
      requestCookies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(map['requestCookies']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap((value as Map).cast<String, dynamic>()))),
      requestHeaders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(map['requestHeaders']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap((value as Map).cast<String, dynamic>()))),
      requestQueryParams: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(map['requestQueryParams']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap((value as Map).cast<String, dynamic>()))),
      requestUris: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(map['requestUris']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap((value as Map).cast<String, dynamic>()))),
      targetRuleIds: pulumi.Input.fromValue((map['targetRuleIds'] as List).cast<String>()),
      targetRuleSet: pulumi.Input.fromValue(map['targetRuleSet'] as String),
    );
  }
}
