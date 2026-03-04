// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation {
  /// List of locations.
  final pulumi.Input<List<String>> locations;

  /// Creates a new [GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'locations': locations};
  }

  factory GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation(
      locations: pulumi.Input.fromValue(
        (map['locations'] as List).cast<String>(),
      ),
    );
  }
}
