// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information specifying where to deploy a Cloud Run Service.
class CloudRunLocation {
  /// The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  final pulumi.Input<String> location;

  /// Creates a new [CloudRunLocation].
  /// [location] The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  const CloudRunLocation({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory CloudRunLocation.fromMap(Map<String, dynamic> map) {
    return CloudRunLocation(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

