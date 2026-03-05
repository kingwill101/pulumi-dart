// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

