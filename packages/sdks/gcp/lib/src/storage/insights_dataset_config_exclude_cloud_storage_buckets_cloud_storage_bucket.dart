// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket {
  /// The list of cloud storage bucket names to exclude in the DatasetConfig.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final pulumi.Input<String>? bucketName;
  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final pulumi.Input<String>? bucketPrefixRegex;

  /// Creates a new [InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket].
  /// [bucketName] The list of cloud storage bucket names to exclude in the DatasetConfig.
  /// [bucketPrefixRegex] The list of regex patterns for bucket names matching the regex.
  const InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPrefixRegex': ?bucketPrefixRegex,
    };
  }

  factory InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketPrefixRegex: (() { final guardedValue = map['bucketPrefixRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

