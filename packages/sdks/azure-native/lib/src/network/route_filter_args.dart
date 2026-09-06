// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_rule.dart';

/// {@template pulumi_network_route_filter_args_doc}
/// The set of arguments for RouteFilter.
/// {@endtemplate}
/// {@macro pulumi_network_route_filter_args_doc}
class RouteFilterArgs {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route filter.
  final pulumi.Input<String?>? routeFilterName;
  /// Collection of RouteFilterRules contained within a route filter.
  /// These are also available as standalone resources. Do not mix inline and standalone resource as they will conflict with each other, leading to resources deletion.
  final pulumi.Input<List<RouteFilterRule>?>? rules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RouteFilterArgs].
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [routeFilterName] The name of the route filter.
  /// [rules] Collection of RouteFilterRules contained within a route filter.
  /// [tags] Resource tags.
  const RouteFilterArgs({
    this.id,
    this.location,
    required this.resourceGroupName,
    this.routeFilterName,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'routeFilterName': ?routeFilterName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouteFilterRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouteFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory RouteFilterArgs.fromMap(Map<String, dynamic> map) {
    return RouteFilterArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routeFilterName: (() { final guardedValue = map['routeFilterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RouteFilterRule>(guardedValue, (value) => RouteFilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
