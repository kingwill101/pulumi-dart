// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_filter_rule.dart';

/// Result data returned by getRouteFilter.
class GetRouteFilterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Route Filter exists.
  final String? location;
  /// The Name of Route Filter Rule
  final String? name;
  final String? resourceGroupName;
  /// A `rule` block as defined below.
  final List<GetRouteFilterRule>? rules;
  /// A mapping of tags assigned to the Route Filter.
  final Map<String, String>? tags;

  /// Creates a new [GetRouteFilterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Route Filter exists.
  /// [name] The Name of Route Filter Rule
  /// [resourceGroupName] Optional.
  /// [rules] A `rule` block as defined below.
  /// [tags] A mapping of tags assigned to the Route Filter.
  const GetRouteFilterResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteFilterRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
    };
  }

  factory GetRouteFilterResult.fromMap(Map<String, dynamic> map) {
    return GetRouteFilterResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteFilterRule>(guardedValue, (value) => GetRouteFilterRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
