// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appengine_v1_get_ingress_rule_args_doc}
/// Arguments for getIngressRule.
/// {@endtemplate}
/// {@macro pulumi_appengine_v1_get_ingress_rule_args_doc}
class GetIngressRuleArgs {
  final pulumi.Input<String> appId;
  final pulumi.Input<String> ingressRuleId;

  /// Creates a new [GetIngressRuleArgs].
  /// [appId] Required.
  /// [ingressRuleId] Required.
  GetIngressRuleArgs({
    required this.appId,
    required this.ingressRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'ingressRuleId': ingressRuleId,
    };
  }

  factory GetIngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      ingressRuleId: pulumi.Input.fromValue(map['ingressRuleId'] as String),
    );
  }
}

