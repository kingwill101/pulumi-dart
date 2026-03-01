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
    required pulumi.Output<String> appId,
    required pulumi.Output<String> ingressRuleId,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      ingressRuleId = pulumi.Input.asInput<String>(ingressRuleId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'ingressRuleId': ingressRuleId,
    };
  }

  factory GetIngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetIngressRuleArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      ingressRuleId: pulumi.Output.create<String>(map['ingressRuleId'] as String),
    );
  }
}

