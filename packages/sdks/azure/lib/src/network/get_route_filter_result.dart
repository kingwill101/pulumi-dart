// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_filter_rule.dart';

/// Result data returned by getRouteFilter.
class GetRouteFilterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Route Filter exists.
  final String location;
  /// The Name of Route Filter Rule
  final String name;
  final String resourceGroupName;
  /// A `rule` block as defined below.
  final List<GetRouteFilterRule> rules;
  /// A mapping of tags assigned to the Route Filter.
  final Map<String, String> tags;

  /// Creates a new [GetRouteFilterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Route Filter exists.
  /// [name] The Name of Route Filter Rule
  /// [resourceGroupName] Required.
  /// [rules] A `rule` block as defined below.
  /// [tags] A mapping of tags assigned to the Route Filter.
  const GetRouteFilterResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.rules,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'rules': pulumi.Input.encodeList<GetRouteFilterRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'tags': tags,
    };
  }

  factory GetRouteFilterResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rules: pulumi.Input.decodeList<GetRouteFilterRule>(map['rules']!, (value) => GetRouteFilterRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
