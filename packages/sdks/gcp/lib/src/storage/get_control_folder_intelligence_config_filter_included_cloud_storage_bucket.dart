// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final pulumi.Input<List<String>> bucketIdRegexes;

  /// Creates a new [GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket(
      bucketIdRegexes: ((map['bucketIdRegexes'] as List).cast<String>()).input(),
    );
  }
}

