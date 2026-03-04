// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_route_filter_rule_args_doc}
/// Arguments for getRouteFilterRule.
/// {@endtemplate}
/// {@macro pulumi_network_get_route_filter_rule_args_doc}
class GetRouteFilterRuleArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the route filter.
  final pulumi.Input<String> routeFilterName;

  /// The name of the rule.
  final pulumi.Input<String> ruleName;

  /// Creates a new [GetRouteFilterRuleArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  /// [ruleName] The name of the rule.
  GetRouteFilterRuleArgs({
    required this.resourceGroupName,
    required this.routeFilterName,
    required this.ruleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeFilterName': routeFilterName,
      'ruleName': ruleName,
    };
  }

  factory GetRouteFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRuleArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      routeFilterName: pulumi.Input.fromValue(map['routeFilterName'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
    );
  }
}
