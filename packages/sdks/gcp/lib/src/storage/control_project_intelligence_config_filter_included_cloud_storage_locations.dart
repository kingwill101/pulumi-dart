// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  const ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

