// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocationsLocation {
  /// The friendly name for this location, typically a nearby city name. For example, "Tokyo".
  final pulumi.Input<String> displayName;
  /// Cross-service attributes for the location. For example `{"cloud.googleapis.com/region": "us-east1"}`.
  final pulumi.Input<Map<String, String>> labels;
  /// The canonical id for this location. For example: "us-east1"..
  final pulumi.Input<String> locationId;
  /// Service-specific metadata. For example the available capacity at the given location.
  final pulumi.Input<Map<String, String>> metadata;
  /// Resource name for the location, which may vary between implementations. For example: "projects/example-project/locations/us-east1".
  final pulumi.Input<String> name;

  /// Creates a new [GetLocationsLocation].
  /// [displayName] The friendly name for this location, typically a nearby city name. For example, "Tokyo".
  /// [labels] Cross-service attributes for the location. For example `{"cloud.googleapis.com/region": "us-east1"}`.
  /// [locationId] The canonical id for this location. For example: "us-east1"..
  /// [metadata] Service-specific metadata. For example the available capacity at the given location.
  /// [name] Resource name for the location, which may vary between implementations. For example: "projects/example-project/locations/us-east1".
  GetLocationsLocation({
    required this.displayName,
    required this.labels,
    required this.locationId,
    required this.metadata,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'labels': labels,
      'locationId': locationId,
      'metadata': metadata,
      'name': name,
    };
  }

  factory GetLocationsLocation.fromMap(Map<String, dynamic> map) {
    return GetLocationsLocation(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      locationId: pulumi.Input.fromValue(map['locationId'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

