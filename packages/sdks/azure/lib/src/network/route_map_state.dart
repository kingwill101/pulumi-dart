// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule.dart';

/// Input properties used for looking up and filtering RouteMap resources.
class RouteMapState {
  /// The name which should be used for this Route Map. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `rule` block as defined below.
  final pulumi.Input<List<RouteMapRule>>? rules;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualHubId;

  /// Creates a new [RouteMapState].
  /// [name] The name which should be used for this Route Map. Changing this forces a new resource to be created.
  /// [rules] A `rule` block as defined below.
  /// [virtualHubId] The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  RouteMapState({
    pulumi.Output<String>? name,
    pulumi.Output<List<RouteMapRule>>? rules,
    pulumi.Output<String>? virtualHubId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      rules = pulumi.Input.asOptionalInput<List<RouteMapRule>>(rules),
      virtualHubId = pulumi.Input.asOptionalInput<String>(virtualHubId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouteMapRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubId': ?virtualHubId,
    };
  }

  factory RouteMapState.fromMap(Map<String, dynamic> map) {
    return RouteMapState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<RouteMapRule>>(pulumi.Input.decodeList<RouteMapRule>(map['rules'], (value) => RouteMapRule.fromMap((value as Map).cast<String, dynamic>()))),
      virtualHubId: map['virtualHubId'] == null ? null : pulumi.Output.create<String>(map['virtualHubId'] as String),
    );
  }
}

