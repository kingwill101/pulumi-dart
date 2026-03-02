// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route Filter Rule Resource.
class RouteFilterRule {
  /// The access type of the rule.
  final pulumi.Input<String> access;
  /// The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  final pulumi.Input<List<String>> communities;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The rule type of the rule.
  final pulumi.Input<String> routeFilterRuleType;

  /// Creates a new [RouteFilterRule].
  /// [access] The access type of the rule.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [routeFilterRuleType] The rule type of the rule.
  RouteFilterRule({
    required this.access,
    required this.communities,
    this.id,
    this.location,
    this.name,
    required this.routeFilterRuleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'routeFilterRuleType': routeFilterRuleType,
    };
  }

  factory RouteFilterRule.fromMap(Map<String, dynamic> map) {
    return RouteFilterRule(
      access: (map['access'] as String).input(),
      communities: ((map['communities'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      routeFilterRuleType: (map['routeFilterRuleType'] as String).input(),
    );
  }
}

