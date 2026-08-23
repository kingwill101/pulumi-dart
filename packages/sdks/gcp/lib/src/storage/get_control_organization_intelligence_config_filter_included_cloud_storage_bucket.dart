// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final pulumi.Input<List<String>> bucketIdRegexes;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  const GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket(
      bucketIdRegexes: pulumi.Input.fromValue((map['bucketIdRegexes'] as List).cast<String>()),
    );
  }
}
