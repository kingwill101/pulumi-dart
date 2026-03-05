// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_rewrite_rule_set_rewrite_rule.dart';

class GetApplicationGatewayRewriteRuleSet {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// One or more `rewrite_rule` blocks as defined below.
  final pulumi.Input<List<GetApplicationGatewayRewriteRuleSetRewriteRule>> rewriteRules;

  /// Creates a new [GetApplicationGatewayRewriteRuleSet].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [rewriteRules] One or more `rewrite_rule` blocks as defined below.
  GetApplicationGatewayRewriteRuleSet({
    required this.id,
    required this.name,
    required this.rewriteRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'rewriteRules': pulumi.Input.mapInputValue<List<GetApplicationGatewayRewriteRuleSetRewriteRule>, List<Map<String, dynamic>>>(rewriteRules, (value) => pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetApplicationGatewayRewriteRuleSet.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSet(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rewriteRules: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRule>(map['rewriteRules']!, (value) => GetApplicationGatewayRewriteRuleSetRewriteRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

