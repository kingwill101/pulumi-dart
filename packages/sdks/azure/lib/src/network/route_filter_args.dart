// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_rule.dart';

/// {@template pulumi_network_route_filter_route_filter_args_doc}
/// The set of arguments for RouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_route_filter_args_doc}
class RouteFilterArgs {
  /// The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  final pulumi.Input<String>? location;
  /// The Name which should be used for this Route Filter.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `rule` block as defined below.
  final pulumi.Input<RouteFilterRule>? rule;
  /// A mapping of tags which should be assigned to the Route Filter.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RouteFilterArgs].
  /// [location] The Azure Region where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  /// [name] The Name which should be used for this Route Filter.
  /// [resourceGroupName] The name of the Resource Group where the Route Filter should exist. Changing this forces a new Route Filter to be created.
  /// [rule] A `rule` block as defined below.
  /// [tags] A mapping of tags which should be assigned to the Route Filter.
  RouteFilterArgs({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<RouteFilterRule>? rule,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rule = pulumi.Input.asOptionalInput<RouteFilterRule>(rule),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<RouteFilterRule>(RouteFilterRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

