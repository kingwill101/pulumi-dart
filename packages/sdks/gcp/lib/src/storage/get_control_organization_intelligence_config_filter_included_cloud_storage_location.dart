// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: pulumi.Input.fromValue((map['locations'] as List).cast<String>()),
    );
  }
}

