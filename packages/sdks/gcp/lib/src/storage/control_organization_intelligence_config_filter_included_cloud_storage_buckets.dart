// ignore_for_file: unused_element, unnecessary_cast


class ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}

