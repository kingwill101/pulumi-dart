// ignore_for_file: unused_element, unnecessary_cast


/// Information specifying where to deploy a Cloud Run Service.
class CloudRunLocation {
  /// The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  final String location;

  /// Creates a new [CloudRunLocation].
  /// [location] The location for the Cloud Run Service. Format must be `projects/{project}/locations/{location}`.
  CloudRunLocation({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory CloudRunLocation.fromMap(Map<String, dynamic> map) {
    return CloudRunLocation(
      location: map['location'] as String,
    );
  }
}

