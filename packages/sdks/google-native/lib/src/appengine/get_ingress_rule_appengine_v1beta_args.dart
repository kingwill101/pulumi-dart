// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
/// Arguments for getIngressRule.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
class GetIngressRuleAppengineV1betaArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> ingressRuleId;

  /// Creates a new [GetIngressRuleAppengineV1betaArgs].
  /// [appId] Required.
  /// [ingressRuleId] Required.
  GetIngressRuleAppengineV1betaArgs({
    required this.appId,
    required this.ingressRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'ingressRuleId': ingressRuleId,
    };
  }

  factory GetIngressRuleAppengineV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleAppengineV1betaArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      ingressRuleId: pulumi.Input.fromValue(map['ingressRuleId'] as String),
    );
  }
}

