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
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> routeFilterName,
    required pulumi.Output<String> ruleName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeFilterName = pulumi.Input.asInput<String>(routeFilterName),
      ruleName = pulumi.Input.asInput<String>(ruleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'routeFilterName': routeFilterName,
      'ruleName': ruleName,
    };
  }

  factory GetRouteFilterRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterRuleArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routeFilterName: pulumi.Output.create<String>(map['routeFilterName'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
    );
  }
}

