// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'insights_dataset_config_include_cloud_storage_buckets_cloud_storage_bucket.dart';

class InsightsDatasetConfigIncludeCloudStorageBuckets {
  /// The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<
    List<InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket>
  >
  cloudStorageBuckets;

  /// Creates a new [InsightsDatasetConfigIncludeCloudStorageBuckets].
  /// [cloudStorageBuckets] The list of cloud storage buckets/bucket prefix regexes to include in the DatasetConfig.
  InsightsDatasetConfigIncludeCloudStorageBuckets({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageBuckets':
          pulumi.Input.mapInputValue<
            List<
              InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket
            >,
            List<Map<String, dynamic>>
          >(
            cloudStorageBuckets,
            (value) =>
                pulumi.Input.encodeList<
                  InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InsightsDatasetConfigIncludeCloudStorageBuckets.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightsDatasetConfigIncludeCloudStorageBuckets(
      cloudStorageBuckets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket
        >(
          map['cloudStorageBuckets']!,
          (value) =>
              InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
