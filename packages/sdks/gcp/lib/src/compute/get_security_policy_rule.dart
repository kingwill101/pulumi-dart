// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_header_action.dart';
import 'get_security_policy_rule_match.dart';
import 'get_security_policy_rule_preconfigured_waf_config.dart';
import 'get_security_policy_rule_rate_limit_option.dart';
import 'get_security_policy_rule_redirect_option.dart';

class GetSecurityPolicyRule {
  /// Action to take when match matches the request.
  final pulumi.Input<String> action;
  /// An optional description of this rule. Max size is 64.
  final pulumi.Input<String> description;
  /// Additional actions that are performed on headers.
  final pulumi.Input<List<GetSecurityPolicyRuleHeaderAction>> headerActions;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced.
  final pulumi.Input<List<GetSecurityPolicyRuleMatch>> matches;
  /// Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  final pulumi.Input<List<GetSecurityPolicyRulePreconfiguredWafConfig>> preconfiguredWafConfigs;
  /// When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such.
  final pulumi.Input<bool> preview;
  /// An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.
  final pulumi.Input<int> priority;
  /// Rate limit threshold for this security policy. Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  final pulumi.Input<List<GetSecurityPolicyRuleRateLimitOption>> rateLimitOptions;
  /// Parameters defining the redirect action. Cannot be specified for any other actions.
  final pulumi.Input<List<GetSecurityPolicyRuleRedirectOption>> redirectOptions;

  /// Creates a new [GetSecurityPolicyRule].
  /// [action] Action to take when match matches the request.
  /// [description] An optional description of this rule. Max size is 64.
  /// [headerActions] Additional actions that are performed on headers.
  /// [matches] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced.
  /// [preconfiguredWafConfigs] Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// [preview] When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such.
  /// [priority] An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.
  /// [rateLimitOptions] Rate limit threshold for this security policy. Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions.
  GetSecurityPolicyRule({
    required this.action,
    required this.description,
    required this.headerActions,
    required this.matches,
    required this.preconfiguredWafConfigs,
    required this.preview,
    required this.priority,
    required this.rateLimitOptions,
    required this.redirectOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': description,
      'headerActions': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleHeaderAction>, List<Map<String, dynamic>>>(headerActions, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleHeaderAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matches': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preconfiguredWafConfigs': pulumi.Input.mapInputValue<List<GetSecurityPolicyRulePreconfiguredWafConfig>, List<Map<String, dynamic>>>(preconfiguredWafConfigs, (value) => pulumi.Input.encodeList<GetSecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'preview': preview,
      'priority': priority,
      'rateLimitOptions': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleRateLimitOption>, List<Map<String, dynamic>>>(rateLimitOptions, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleRateLimitOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectOptions': pulumi.Input.mapInputValue<List<GetSecurityPolicyRuleRedirectOption>, List<Map<String, dynamic>>>(redirectOptions, (value) => pulumi.Input.encodeList<GetSecurityPolicyRuleRedirectOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      headerActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRuleHeaderAction>(map['headerActions']!, (value) => GetSecurityPolicyRuleHeaderAction.fromMap((value as Map).cast<String, dynamic>()))),
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRuleMatch>(map['matches']!, (value) => GetSecurityPolicyRuleMatch.fromMap((value as Map).cast<String, dynamic>()))),
      preconfiguredWafConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRulePreconfiguredWafConfig>(map['preconfiguredWafConfigs']!, (value) => GetSecurityPolicyRulePreconfiguredWafConfig.fromMap((value as Map).cast<String, dynamic>()))),
      preview: pulumi.Input.fromValue(map['preview'] as bool),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      rateLimitOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRuleRateLimitOption>(map['rateLimitOptions']!, (value) => GetSecurityPolicyRuleRateLimitOption.fromMap((value as Map).cast<String, dynamic>()))),
      redirectOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetSecurityPolicyRuleRedirectOption>(map['redirectOptions']!, (value) => GetSecurityPolicyRuleRedirectOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

