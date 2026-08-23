// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations].
  /// [locations] List of locations.
  const ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}
