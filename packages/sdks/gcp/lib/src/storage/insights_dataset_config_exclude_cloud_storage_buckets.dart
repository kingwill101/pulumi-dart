// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_dataset_config_exclude_cloud_storage_buckets_cloud_storage_bucket.dart';

class InsightsDatasetConfigExcludeCloudStorageBuckets {
  /// The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<List<InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket>> cloudStorageBuckets;

  /// Creates a new [InsightsDatasetConfigExcludeCloudStorageBuckets].
  /// [cloudStorageBuckets] The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  InsightsDatasetConfigExcludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageBuckets': pulumi.Input.mapInputValue<List<InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket>, List<Map<String, dynamic>>>(cloudStorageBuckets, (value) => pulumi.Input.encodeList<InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InsightsDatasetConfigExcludeCloudStorageBuckets.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigExcludeCloudStorageBuckets(
      cloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket>(map['cloudStorageBuckets']!, (value) => InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

