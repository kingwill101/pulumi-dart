// ignore_for_file: unused_element, unnecessary_cast


class GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation {
  /// List of locations.
  final List<String> locations;

  /// Creates a new [GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation].
  /// [locations] List of locations.
  GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation({
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': locations,
    };
  }

  factory GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation(
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}

