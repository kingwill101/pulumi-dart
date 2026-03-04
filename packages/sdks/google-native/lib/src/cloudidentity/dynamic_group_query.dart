// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_resource_type.dart';

/// Defines a query on a resource.
class DynamicGroupQuery {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final pulumi.Input<String>? query;

  /// Resource type for the Dynamic Group Query
  final pulumi.Input<DynamicGroupQueryResourceType>? resourceType;

  /// Creates a new [DynamicGroupQuery].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Resource type for the Dynamic Group Query
  DynamicGroupQuery({this.query, this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
      'resourceType':
          ?pulumi.Input.mapOptionalInputValue<
            DynamicGroupQueryResourceType,
            String
          >(resourceType, (value) => value.wireValue),
    };
  }

  factory DynamicGroupQuery.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQuery(
      query: (() {
        final guardedValue = map['query'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DynamicGroupQueryResourceType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
