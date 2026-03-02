// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_ingress_rule_component.dart';
import 'get_app_spec_ingress_rule_cors.dart';
import 'get_app_spec_ingress_rule_match.dart';
import 'get_app_spec_ingress_rule_redirect.dart';

class GetAppSpecIngressRule {
  final pulumi.Input<GetAppSpecIngressRuleComponent> component;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final pulumi.Input<GetAppSpecIngressRuleCors> cors;
  final pulumi.Input<GetAppSpecIngressRuleMatch> match;
  final pulumi.Input<GetAppSpecIngressRuleRedirect>? redirect;

  /// Creates a new [GetAppSpecIngressRule].
  /// [component] Required.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [match] Required.
  /// [redirect] Optional.
  GetAppSpecIngressRule({
    required this.component,
    required this.cors,
    required this.match,
    this.redirect,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': pulumi.Input.mapInputValue<GetAppSpecIngressRuleComponent, Map<String, dynamic>>(component, (value) => value.toMap()),
      'cors': pulumi.Input.mapInputValue<GetAppSpecIngressRuleCors, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<GetAppSpecIngressRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'redirect': ?pulumi.Input.mapOptionalInputValue<GetAppSpecIngressRuleRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
    };
  }

  factory GetAppSpecIngressRule.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRule(
      component: (GetAppSpecIngressRuleComponent.fromMap((map['component'] as Map).cast<String, dynamic>())).input(),
      cors: (GetAppSpecIngressRuleCors.fromMap((map['cors'] as Map).cast<String, dynamic>())).input(),
      match: (GetAppSpecIngressRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>())).input(),
      redirect: map['redirect'] == null ? null : (GetAppSpecIngressRuleRedirect.fromMap((map['redirect']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

