// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule_set_rewrite_rule.dart';

class ApplicationGatewayRewriteRuleSet {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// Unique name of the rewrite rule set block
  final pulumi.Input<String> name;
  /// One or more `rewrite_rule` blocks as defined below.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSetRewriteRule>>? rewriteRules;

  /// Creates a new [ApplicationGatewayRewriteRuleSet].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] Unique name of the rewrite rule set block
  /// [rewriteRules] One or more `rewrite_rule` blocks as defined below.
  ApplicationGatewayRewriteRuleSet({
    this.id,
    required this.name,
    this.rewriteRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'rewriteRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleSetRewriteRule>, List<Map<String, dynamic>>>(rewriteRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetRewriteRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewayRewriteRuleSet.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSet(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      rewriteRules: (() { final guardedValue = map['rewriteRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetRewriteRule>(guardedValue, (value) => ApplicationGatewayRewriteRuleSetRewriteRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

