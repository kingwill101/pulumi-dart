// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteFilterRule {
  /// The access type of the rule
  final pulumi.Input<String> access;
  /// The collection for bgp community values.
  final pulumi.Input<List<String>> communities;
  /// The Name of this Route Filter.
  final pulumi.Input<String> name;
  /// The Route Filter Rule Type.
  final pulumi.Input<String> ruleType;

  /// Creates a new [GetRouteFilterRule].
  /// [access] The access type of the rule
  /// [communities] The collection for bgp community values.
  /// [name] The Name of this Route Filter.
  /// [ruleType] The Route Filter Rule Type.
  GetRouteFilterRule({
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

  factory GetRouteFilterRule.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRule(
      access: pulumi.Input.fromValue(map['access'] as String),
      communities: pulumi.Input.fromValue((map['communities'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

