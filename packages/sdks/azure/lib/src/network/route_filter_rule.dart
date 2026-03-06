// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteFilterRule {
  /// The access type of the rule. The only possible value is `Allow`.
  final pulumi.Input<String> access;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final pulumi.Input<List<String>> communities;
  /// The name of the route filter rule.
  final pulumi.Input<String> name;
  /// The rule type of the rule. The only possible value is `Community`.
  final pulumi.Input<String> ruleType;

  /// Creates a new [RouteFilterRule].
  /// [access] The access type of the rule. The only possible value is `Allow`.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [name] The name of the route filter rule.
  /// [ruleType] The rule type of the rule. The only possible value is `Community`.
  const RouteFilterRule({
    required this.access,
    required this.communities,
    required this.name,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'name': name,
      'ruleType': ruleType,
    };
  }

  factory RouteFilterRule.fromMap(Map<String, dynamic> map) {
    return RouteFilterRule(
      access: pulumi.Input.fromValue(map['access'] as String),
      communities: pulumi.Input.fromValue((map['communities'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

