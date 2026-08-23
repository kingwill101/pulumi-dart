// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiscoveredServiceServiceProperty {
  /// The service project identifier that the underlying cloud resource resides in.
  final pulumi.Input<String> gcpProject;
  /// The location of the discovered service.
  final pulumi.Input<String> location;
  /// The location that the underlying resource resides in if it is zonal.
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiscoveredServiceServiceProperty].
  /// [gcpProject] The service project identifier that the underlying cloud resource resides in.
  /// [location] The location of the discovered service.
  /// [zone] The location that the underlying resource resides in if it is zonal.
  const GetDiscoveredServiceServiceProperty({
    required this.gcpProject,
    required this.location,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpProject': gcpProject,
      'location': location,
      'zone': zone,
    };
  }

  factory GetDiscoveredServiceServiceProperty.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceServiceProperty(
      gcpProject: pulumi.Input.fromValue(map['gcpProject'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
