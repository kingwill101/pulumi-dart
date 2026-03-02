// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations(
      locations: ((map['locations'] as List).cast<String>()).input(),
    );
  }
}

