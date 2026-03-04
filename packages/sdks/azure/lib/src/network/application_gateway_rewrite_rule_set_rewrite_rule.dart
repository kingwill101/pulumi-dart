// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_set_rewrite_rule_condition.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_request_header_configuration.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_response_header_configuration.dart';
import 'application_gateway_rewrite_rule_set_rewrite_rule_url.dart';

class ApplicationGatewayRewriteRuleSetRewriteRule {
  /// One or more `condition` blocks as defined above.
  final pulumi.Input<
    List<ApplicationGatewayRewriteRuleSetRewriteRuleCondition>
  >?
  conditions;

  /// Unique name of the rewrite rule block
  final pulumi.Input<String> name;

  /// One or more `request_header_configuration` blocks as defined above.
  final pulumi.Input<
    List<ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration>
  >?
  requestHeaderConfigurations;

  /// One or more `response_header_configuration` blocks as defined above.
  final pulumi.Input<
    List<ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration>
  >?
  responseHeaderConfigurations;

  /// Rule sequence of the rewrite rule that determines the order of execution in a set.
  final pulumi.Input<int> ruleSequence;

  /// One `url` block as defined below
  final pulumi.Input<ApplicationGatewayRewriteRuleSetRewriteRuleUrl>? url;

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
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayRewriteRuleSetRewriteRuleCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayRewriteRuleSetRewriteRuleCondition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'requestHeaderConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            requestHeaderConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'responseHeaderConfigurations':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration
            >,
            List<Map<String, dynamic>>
          >(
            responseHeaderConfigurations,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ruleSequence': ruleSequence,
      'url':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationGatewayRewriteRuleSetRewriteRuleUrl,
            Map<String, dynamic>
          >(url, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRewriteRuleSetRewriteRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayRewriteRuleSetRewriteRule(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ApplicationGatewayRewriteRuleSetRewriteRuleCondition
          >(
            guardedValue,
            (value) =>
                ApplicationGatewayRewriteRuleSetRewriteRuleCondition.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      requestHeaderConfigurations: (() {
        final guardedValue = map['requestHeaderConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration
          >(
            guardedValue,
            (value) =>
                ApplicationGatewayRewriteRuleSetRewriteRuleRequestHeaderConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      responseHeaderConfigurations: (() {
        final guardedValue = map['responseHeaderConfigurations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration
          >(
            guardedValue,
            (value) =>
                ApplicationGatewayRewriteRuleSetRewriteRuleResponseHeaderConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      ruleSequence: pulumi.Input.fromValue(map['ruleSequence'] as int),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationGatewayRewriteRuleSetRewriteRuleUrl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
