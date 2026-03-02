// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiscoveredWorkloadWorkloadProperty {
  /// The service project identifier that the underlying cloud resource resides in.
  final pulumi.Input<String> gcpProject;
  /// The location of the discovered workload.
  final pulumi.Input<String> location;
  /// The location that the underlying resource resides in if it is zonal.
  final pulumi.Input<String> zone;

  /// Creates a new [GetDiscoveredWorkloadWorkloadProperty].
  /// [gcpProject] The service project identifier that the underlying cloud resource resides in.
  /// [location] The location of the discovered workload.
  /// [zone] The location that the underlying resource resides in if it is zonal.
  GetDiscoveredWorkloadWorkloadProperty({
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

  factory GetDiscoveredWorkloadWorkloadProperty.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadWorkloadProperty(
      gcpProject: (map['gcpProject'] as String).input(),
      location: (map['location'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

