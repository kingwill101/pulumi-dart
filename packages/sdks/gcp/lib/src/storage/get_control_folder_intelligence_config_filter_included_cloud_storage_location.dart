// ignore_for_file: unused_element, unnecessary_cast


class GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}

