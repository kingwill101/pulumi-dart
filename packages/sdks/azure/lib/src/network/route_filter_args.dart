// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_rule.dart';

/// {@template pulumi_network_route_filter_route_filter_args_doc}
/// The set of arguments for RouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_route_filter_args_doc}
class RouteFilterArgs {
  /// The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  final pulumi.Input<String?>? location;
  /// The Name which should be used for this Route Filter.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `rule` block as defined below.
  final pulumi.Input<RouteFilterRule?>? rule;
  /// A mapping of tags which should be assigned to the Route Filter.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RouteFilterArgs].
  /// [location] The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  /// [name] The Name which should be used for this Route Filter.
  /// [resourceGroupName] The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  /// [rule] A `rule` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Route Filter.
  const RouteFilterArgs({
    this.location,
    this.name,
    required this.resourceGroupName,
    this.rule,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'rule': ?pulumi.Input.mapOptionalInputValue<RouteFilterRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RouteFilterArgs.fromMap(Map<String, dynamic> map) {
    return RouteFilterArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteFilterRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
