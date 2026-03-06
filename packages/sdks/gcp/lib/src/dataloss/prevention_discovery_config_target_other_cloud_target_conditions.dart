// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_conditions_amazon_s3_bucket_conditions.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetConditions {
  /// Amazon S3 bucket conditions.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nested_targets_other_cloud_target_conditions_amazon_s3_bucket_conditions"&gt;&lt;/a&gt;The `amazon_s3_bucket_conditions` block supports:
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions>? amazonS3BucketConditions;
  /// Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  final pulumi.Input<String>? minAge;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetConditions].
  /// [amazonS3BucketConditions] Amazon S3 bucket conditions.
  /// [minAge] Duration format.  Minimum age a resource must be before a profile can be generated. Value must be 1 hour or greater. Minimum age is not supported for Azure Blob Storage containers.
  const PreventionDiscoveryConfigTargetOtherCloudTargetConditions({
    this.amazonS3BucketConditions,
    this.minAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3BucketConditions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions, Map<String, dynamic>>(amazonS3BucketConditions, (value) => value.toMap()),
      'minAge': ?minAge,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetConditions.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetConditions(
      amazonS3BucketConditions: (() { final guardedValue = map['amazonS3BucketConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetOtherCloudTargetConditionsAmazonS3BucketConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minAge: (() { final guardedValue = map['minAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

