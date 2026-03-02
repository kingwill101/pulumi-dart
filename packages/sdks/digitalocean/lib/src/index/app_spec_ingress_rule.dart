// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_ingress_rule_component.dart';
import 'app_spec_ingress_rule_cors.dart';
import 'app_spec_ingress_rule_match.dart';
import 'app_spec_ingress_rule_redirect.dart';

class AppSpecIngressRule {
  /// The component to route to. Only one of `component` or `redirect` may be set.
  final pulumi.Input<AppSpecIngressRuleComponent>? component;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<AppSpecIngressRuleCors>? cors;
  /// The match configuration for the rule
  final pulumi.Input<AppSpecIngressRuleMatch>? match;
  /// The redirect configuration for the rule. Only one of `component` or `redirect` may be set.
  final pulumi.Input<AppSpecIngressRuleRedirect>? redirect;

  /// Creates a new [AppSpecIngressRule].
  /// [component] The component to route to. Only one of `component` or `redirect` may be set.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [match] The match configuration for the rule
  /// [redirect] The redirect configuration for the rule. Only one of `component` or `redirect` may be set.
  AppSpecIngressRule({
    this.component,
    this.cors,
    this.match,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleComponent, Map<String, dynamic>>(component, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<AppSpecIngressRuleRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory AppSpecIngressRule.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRule(
      component: map['component'] == null ? null : (AppSpecIngressRuleComponent.fromMap((map['component']! as Map).cast<String, dynamic>())).input(),
      cors: map['cors'] == null ? null : (AppSpecIngressRuleCors.fromMap((map['cors']! as Map).cast<String, dynamic>())).input(),
      match: map['match'] == null ? null : (AppSpecIngressRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
      redirect: map['redirect'] == null ? null : (AppSpecIngressRuleRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

