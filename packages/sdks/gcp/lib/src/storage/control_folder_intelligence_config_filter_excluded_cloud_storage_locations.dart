// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations(
      locations: ((map['locations'] as List).cast<String>()).input(),
    );
  }
}

