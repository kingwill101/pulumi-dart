// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket {
  /// The list of cloud storage bucket names to include in the DatasetConfig.
  /// Exactly one of the bucketName and bucketPrefixRegex should be specified.
  final pulumi.Input<String> bucketName;
  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the bucketName and bucketPrefixRegex should be specified.
  final pulumi.Input<String> bucketPrefixRegex;

  /// Creates a new [GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket].
  /// [bucketName] The list of cloud storage bucket names to include in the DatasetConfig.
  /// [bucketPrefixRegex] The list of regex patterns for bucket names matching the regex.
  const GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket({
    required this.bucketName,
    required this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefixRegex': bucketPrefixRegex,
    };
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      bucketPrefixRegex: pulumi.Input.fromValue(map['bucketPrefixRegex'] as String),
    );
  }
}
