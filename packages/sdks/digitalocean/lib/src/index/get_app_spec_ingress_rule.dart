// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_ingress_rule_component.dart';
import 'get_app_spec_ingress_rule_cors.dart';
import 'get_app_spec_ingress_rule_match.dart';
import 'get_app_spec_ingress_rule_redirect.dart';

class GetAppSpecIngressRule {
  final GetAppSpecIngressRuleComponent component;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final GetAppSpecIngressRuleCors cors;
  final GetAppSpecIngressRuleMatch match;
  final GetAppSpecIngressRuleRedirect? redirect;

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
      'component': component.toMap(),
      'cors': cors.toMap(),
      'match': match.toMap(),
      'redirect': ?redirect == null ? null : redirect!.toMap(),
    };
  }

  factory GetAppSpecIngressRule.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRule(
      component: GetAppSpecIngressRuleComponent.fromMap((map['component'] as Map).cast<String, dynamic>()),
      cors: GetAppSpecIngressRuleCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      match: GetAppSpecIngressRuleMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
      redirect: map['redirect'] == null ? null : GetAppSpecIngressRuleRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>()),
    );
  }
}

