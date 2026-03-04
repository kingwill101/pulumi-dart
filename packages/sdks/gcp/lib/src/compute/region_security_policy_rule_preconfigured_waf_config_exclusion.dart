// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class RegionSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<
    List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>
  >?
  requestCookies;

  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final pulumi.Input<
    List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>
  >?
  requestHeaders;

  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  /// Structure is documented below.
  final pulumi.Input<
    List<
      RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
    >
  >?
  requestQueryParams;

  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  /// Structure is documented below.
  final pulumi.Input<
    List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>
  >?
  requestUris;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final pulumi.Input<List<String>>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final pulumi.Input<String> targetRuleSet;

  /// Creates a new [RegionSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  RegionSecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.requestCookies,
    this.requestHeaders,
    this.requestQueryParams,
    this.requestUris,
    this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky
            >,
            List<Map<String, dynamic>>
          >(
            requestCookies,
            (value) =>
                pulumi.Input.encodeList<
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestHeaders':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
            >,
            List<Map<String, dynamic>>
          >(
            requestHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestQueryParams':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
            >,
            List<Map<String, dynamic>>
          >(
            requestQueryParams,
            (value) =>
                pulumi.Input.encodeList<
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'requestUris':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri
            >,
            List<Map<String, dynamic>>
          >(
            requestUris,
            (value) =>
                pulumi.Input.encodeList<
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: (() {
        final guardedValue = map['requestCookies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky
          >(
            guardedValue,
            (value) =>
                RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      requestHeaders: (() {
        final guardedValue = map['requestHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
          >(
            guardedValue,
            (value) =>
                RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      requestQueryParams: (() {
        final guardedValue = map['requestQueryParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
          >(
            guardedValue,
            (value) =>
                RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      requestUris: (() {
        final guardedValue = map['requestUris'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri
          >(
            guardedValue,
            (value) =>
                RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      targetRuleIds: (() {
        final guardedValue = map['targetRuleIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      targetRuleSet: pulumi.Input.fromValue(map['targetRuleSet'] as String),
    );
  }
}
