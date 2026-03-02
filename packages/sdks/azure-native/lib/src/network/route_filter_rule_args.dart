// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_filter_rule_args_doc}
/// The set of arguments for RouteFilterRule.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_rule_args_doc}
class RouteFilterRuleArgs {
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
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route filter.
  final pulumi.Input<String> routeFilterName;
  /// The rule type of the rule.
  final pulumi.Input<String> routeFilterRuleType;
  /// The name of the route filter rule.
  final pulumi.Input<String>? ruleName;

  /// Creates a new [RouteFilterRuleArgs].
  /// [access] The access type of the rule.
  /// [communities] The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  /// [routeFilterRuleType] The rule type of the rule.
  /// [ruleName] The name of the route filter rule.
  RouteFilterRuleArgs({
    required this.access,
    required this.communities,
    this.id,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.routeFilterName,
    required this.routeFilterRuleType,
    this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'communities': communities,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routeFilterName': routeFilterName,
      'routeFilterRuleType': routeFilterRuleType,
      'ruleName': ?ruleName,
    };
  }

  factory RouteFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return RouteFilterRuleArgs(
      access: (map['access'] as String).input(),
      communities: ((map['communities'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routeFilterName: (map['routeFilterName'] as String).input(),
      routeFilterRuleType: (map['routeFilterRuleType'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
    );
  }
}

