// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets {
  /// The names of the buckets to include. For Auto Annotate, regex wildcards aren't
  /// supported, so specify exact bucket names (for example, `my-bucket`). Each bucket
  /// must already exist in the feature configuration's project. Up to 1,000 buckets can
  /// be specified.
  final pulumi.Input<List<String>> bucketIdRegexes;

  /// Creates a new [ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets].
  /// [bucketIdRegexes] The names of the buckets to include. For Auto Annotate, regex wildcards aren't
  const ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets(
      bucketIdRegexes: pulumi.Input.fromValue((map['bucketIdRegexes'] as List).cast<String>()),
    );
  }
}
