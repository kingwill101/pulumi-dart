// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_feature_config_filter_included_cloud_storage_bucket.dart';

class GetControlProjectFeatureConfigFilter {
  /// The buckets to include in the feature configuration.
  final pulumi.Input<List<GetControlProjectFeatureConfigFilterIncludedCloudStorageBucket>> includedCloudStorageBuckets;

  /// Creates a new [GetControlProjectFeatureConfigFilter].
  /// [includedCloudStorageBuckets] The buckets to include in the feature configuration.
  const GetControlProjectFeatureConfigFilter({
    required this.includedCloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedCloudStorageBuckets': pulumi.Input.mapInputValue<List<GetControlProjectFeatureConfigFilterIncludedCloudStorageBucket>, List<Map<String, dynamic>>>(includedCloudStorageBuckets, (value) => pulumi.Input.encodeList<GetControlProjectFeatureConfigFilterIncludedCloudStorageBucket, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetControlProjectFeatureConfigFilter.fromMap(Map<String, dynamic> map) {
    return GetControlProjectFeatureConfigFilter(
      includedCloudStorageBuckets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectFeatureConfigFilterIncludedCloudStorageBucket>(map['includedCloudStorageBuckets']!, (value) => GetControlProjectFeatureConfigFilterIncludedCloudStorageBucket.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
