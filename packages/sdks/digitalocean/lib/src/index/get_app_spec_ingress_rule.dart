// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule_component.dart';
import 'get_app_spec_ingress_rule_cors.dart';
import 'get_app_spec_ingress_rule_match.dart';
import 'get_app_spec_ingress_rule_redirect.dart';

class GetAppSpecIngressRule {
  final pulumi.Input<GetAppSpecIngressRuleComponent>? component;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<GetAppSpecIngressRuleCors>? cors;
  final pulumi.Input<GetAppSpecIngressRuleMatch>? match;
  final pulumi.Input<GetAppSpecIngressRuleRedirect>? redirect;

  /// Creates a new [GetAppSpecIngressRule].
  /// [component] Optional.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [match] Optional.
  /// [redirect] Optional.
  const GetAppSpecIngressRule({
    this.component,
    this.cors,
    this.match,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleComponent, Map<String, dynamic>>(component, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory GetAppSpecIngressRule.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRule(
      component: (() { final guardedValue = map['component']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleComponent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleCors.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redirect: (() { final guardedValue = map['redirect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecIngressRuleRedirect.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
