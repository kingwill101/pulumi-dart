// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_insights_dataset_config_exclude_cloud_storage_bucket_cloud_storage_bucket.dart';

class GetInsightsDatasetConfigExcludeCloudStorageBucket {
  /// The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  final pulumi.Input<
    List<GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket>
  >
  cloudStorageBuckets;

  /// Creates a new [GetInsightsDatasetConfigExcludeCloudStorageBucket].
  /// [cloudStorageBuckets] The list of cloud storage buckets/bucket prefix regexes to exclude in the DatasetConfig.
  GetInsightsDatasetConfigExcludeCloudStorageBucket({
    required this.cloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudStorageBuckets':
          pulumi.Input.mapInputValue<
            List<
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket
            >,
            List<Map<String, dynamic>>
          >(
            cloudStorageBuckets,
            (value) =>
                pulumi.Input.encodeList<
                  GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetInsightsDatasetConfigExcludeCloudStorageBucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigExcludeCloudStorageBucket(
      cloudStorageBuckets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket
        >(
          map['cloudStorageBuckets']!,
          (value) =>
              GetInsightsDatasetConfigExcludeCloudStorageBucketCloudStorageBucket.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
