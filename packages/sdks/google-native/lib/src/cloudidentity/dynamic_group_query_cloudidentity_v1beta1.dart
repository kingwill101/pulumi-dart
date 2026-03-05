// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_group_query_resource_type_cloudidentity_v1beta1.dart';

/// Defines a query on a resource.
class DynamicGroupQueryCloudidentityV1beta1 {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final pulumi.Input<String>? query;
  final pulumi.Input<DynamicGroupQueryResourceTypeCloudidentityV1beta1>? resourceType;

  /// Creates a new [DynamicGroupQueryCloudidentityV1beta1].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Optional.
  DynamicGroupQueryCloudidentityV1beta1({
    this.query,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
      'resourceType': ?pulumi.Input.mapOptionalInputValue<DynamicGroupQueryResourceTypeCloudidentityV1beta1, String>(resourceType, (value) => value.wireValue),
    };
  }

  factory DynamicGroupQueryCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQueryCloudidentityV1beta1(
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DynamicGroupQueryResourceTypeCloudidentityV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}

