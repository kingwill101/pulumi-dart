// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule.dart';

/// {@template pulumi_network_route_map_route_map_args_doc}
/// The set of arguments for RouteMap.
/// {@endtemplate}
/// {@macro pulumi_network_route_map_route_map_args_doc}
class RouteMapArgs {
  /// The name which should be used for this Route Map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `rule` block as defined below.
  final pulumi.Input<List<RouteMapRule>>? rules;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;

  /// Creates a new [RouteMapArgs].
  /// [name] The name which should be used for this Route Map. Changing this forces a new resource to be created.
  /// [rules] A `rule` block as defined below.
  /// [virtualHubId] The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  RouteMapArgs({
    this.name,
    this.rules,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouteMapRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': virtualHubId,
    };
  }

  factory RouteMapArgs.fromMap(Map<String, dynamic> map) {
    return RouteMapArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<RouteMapRule>(map['rules']!, (value) => RouteMapRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualHubId: (map['virtualHubId'] as String).input(),
    );
  }
}

