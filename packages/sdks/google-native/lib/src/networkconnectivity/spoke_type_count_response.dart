// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The number of spokes of a given type that are associated with a specific hub. The type indicates what kind of resource is associated with the spoke.
class SpokeTypeCountResponse {
  /// The total number of spokes of this type that are associated with the hub.
  final pulumi.Input<String> count;

  /// The type of the spokes.
  final pulumi.Input<String> spokeType;

  /// Creates a new [SpokeTypeCountResponse].
  /// [count] The total number of spokes of this type that are associated with the hub.
  /// [spokeType] The type of the spokes.
  SpokeTypeCountResponse({required this.count, required this.spokeType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'count': count, 'spokeType': spokeType};
  }

  factory SpokeTypeCountResponse.fromMap(Map<String, dynamic> map) {
    return SpokeTypeCountResponse(
      count: pulumi.Input.fromValue(map['count'] as String),
      spokeType: pulumi.Input.fromValue(map['spokeType'] as String),
    );
  }
}
