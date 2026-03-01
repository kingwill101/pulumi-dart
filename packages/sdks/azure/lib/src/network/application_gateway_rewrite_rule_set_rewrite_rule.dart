// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_set_rewrite_rule_condition.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_request_header_configuration.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_response_header_configuration.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_url.dart';

class ApplicationGatewayRewriteRuleSetRewriteRule {
  /// One or more `condition` blocks as defined above.
  final List<ApplicationGatewayRewriteRuleSetRewriteRuleCondition>? conditions;
  /// Unique name of the rewrite rule block
  final String name;
  /// One or more `request_header_configuration` blocks as defined above.
  final List<ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration>? requestHeaderConfigurations;
  /// One or more `response_header_configuration` blocks as defined above.
  final List<ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration>? responseHeaderConfigurations;
  /// Rule sequence of the rewrite rule that determines the order of execution in a set.
  final int ruleSequence;
  /// One `url` block as defined below
  final ApplicationGatewayRewriteRuleSetRewriteRuleUrl? url;

  /// Creates a new [ApplicationGatewayRewriteRuleSetRewriteRule].
  /// [conditions] One or more `condition` blocks as defined above.
  /// [name] Unique name of the rewrite rule block
  /// [requestHeaderConfigurations] One or more `request_header_configuration` blocks as defined above.
  /// [responseHeaderConfigurations] One or more `response_header_configuration` blocks as defined above.
  /// [ruleSequence] Rule sequence of the rewrite rule that determines the order of execution in a set.
  /// [url] One `url` block as defined below
  ApplicationGatewayRewriteRuleSetRewriteRule({
    this.conditions,
    required this.name,
    this.requestHeaderConfigurations,
    this.responseHeaderConfigurations,
    required this.ruleSequence,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetRewriteRuleCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'name': name,
      'requestHeaderConfigurations': ?requestHeaderConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration, Map<String, dynamic>>(requestHeaderConfigurations!, (value) => value.toMap()),
      'responseHeaderConfigurations': ?responseHeaderConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration, Map<String, dynamic>>(responseHeaderConfigurations!, (value) => value.toMap()),
      'ruleSequence': ruleSequence,
      'url': ?url == null ? null : url!.toMap(),
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSetRewriteRule(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetRewriteRuleCondition>(map['conditions'], (value) => ApplicationGatewayRewriteRuleSetRewriteRuleCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      requestHeaderConfigurations: map['requestHeaderConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration>(map['requestHeaderConfigurations'], (value) => ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderConfigurations: map['responseHeaderConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration>(map['responseHeaderConfigurations'], (value) => ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      ruleSequence: map['ruleSequence'] as int,
      url: map['url'] == null ? null : ApplicationGatewayRewriteRuleSetRewriteRuleUrl.fromMap((map['url'] as Map).cast<String, dynamic>()),
    );
  }
}

