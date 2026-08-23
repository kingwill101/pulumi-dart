// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines a query on a resource.
class DynamicGroupQueryResponseCloudidentityV1beta1 {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final pulumi.Input<String> query;
  final pulumi.Input<String> resourceType;

  /// Creates a new [DynamicGroupQueryResponseCloudidentityV1beta1].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Required.
  const DynamicGroupQueryResponseCloudidentityV1beta1({
    required this.query,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': query,
      'resourceType': resourceType,
    };
  }

  factory DynamicGroupQueryResponseCloudidentityV1beta1.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQueryResponseCloudidentityV1beta1(
      query: pulumi.Input.fromValue(map['query'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
