// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_dataset_config_include_cloud_storage_bucket_cloud_storage_bucket.dart';

class GetInsightsDatasetConfigIncludeCloudStorageBucket {
  /// The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  final pulumi.Input<List<GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket>> cloudStorageBuckets;

  /// Creates a new [GetInsightsDatasetConfigIncludeCloudStorageBucket].
  /// [cloudStorageBuckets] The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  GetInsightsDatasetConfigIncludeCloudStorageBucket({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageBuckets': pulumi.Input.mapInputValue<List<GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket>, List<Map<String, dynamic>>>(cloudStorageBuckets, (value) => pulumi.Input.encodeList<GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIncludeCloudStorageBucket(
      cloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket>(map['cloudStorageBuckets']!, (value) => GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

