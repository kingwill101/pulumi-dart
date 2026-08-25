// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'organization_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'organization_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'organization_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>?>? requestCookies;
  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>?>? requestHeaders;
  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>?>? requestQueryParams;
  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  /// Structure is documented below.
  final pulumi.Input<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>?>? requestUris;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>?>? targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String> targetRuleSet;

  /// Creates a new [OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  const OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.requestCookies,
    this.requestHeaders,
    this.requestQueryParams,
    this.requestUris,
    this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>, List<Map<String, dynamic>>>(requestCookies, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestHeaders': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>, List<Map<String, dynamic>>>(requestHeaders, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestQueryParams': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>, List<Map<String, dynamic>>>(requestQueryParams, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestUris': ?pulumi.Input.mapOptionalInputValue<List<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>, List<Map<String, dynamic>>>(requestUris, (value) => pulumi.Input.encodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: (() { final guardedValue = map['requestCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(guardedValue, (value) => OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestHeaders: (() { final guardedValue = map['requestHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(guardedValue, (value) => OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestQueryParams: (() { final guardedValue = map['requestQueryParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(guardedValue, (value) => OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestUris: (() { final guardedValue = map['requestUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(guardedValue, (value) => OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetRuleIds: (() { final guardedValue = map['targetRuleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetRuleSet: pulumi.Input.fromValue(map['targetRuleSet'] as String),
    );
  }
}
