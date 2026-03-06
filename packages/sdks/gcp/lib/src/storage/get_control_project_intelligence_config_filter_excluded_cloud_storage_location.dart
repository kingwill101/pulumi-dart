// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation].
  /// [locations] List of locations.
  const GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

