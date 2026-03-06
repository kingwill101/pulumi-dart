// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource {
  /// Amazon S3 bucket.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_targets_other_cloud_target_filter_single_resource_amazon_s3_bucket"&gt;&lt;/a&gt;The `amazon_s3_bucket` block supports:
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket>? amazonS3Bucket;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource].
  /// [amazonS3Bucket] Amazon S3 bucket.
  const PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource({
    this.amazonS3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3Bucket': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket, Map<String, dynamic>>(amazonS3Bucket, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource(
      amazonS3Bucket: (() { final guardedValue = map['amazonS3Bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

