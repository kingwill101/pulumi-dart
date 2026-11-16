// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_feature_config_filter_included_cloud_storage_buckets.dart';

class ControlProjectFeatureConfigFilter {
  /// The buckets to include in the feature configuration.
  /// Structure is documented below.
  final pulumi.Input<ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets> includedCloudStorageBuckets;

  /// Creates a new [ControlProjectFeatureConfigFilter].
  /// [includedCloudStorageBuckets] The buckets to include in the feature configuration.
  const ControlProjectFeatureConfigFilter({
    required this.includedCloudStorageBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedCloudStorageBuckets': pulumi.Input.mapInputValue<ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets, Map<String, dynamic>>(includedCloudStorageBuckets, (value) => value.toMap()),
    };
  }

  factory ControlProjectFeatureConfigFilter.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigFilter(
      includedCloudStorageBuckets: pulumi.Input.fromValue(ControlProjectFeatureConfigFilterIncludedCloudStorageBuckets.fromMap((map['includedCloudStorageBuckets']! as Map).cast<String, dynamic>())),
    );
  }
}
