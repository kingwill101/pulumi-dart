// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

