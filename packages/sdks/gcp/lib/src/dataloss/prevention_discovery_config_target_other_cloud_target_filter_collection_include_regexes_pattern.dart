// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_targets_other_cloud_target_filter_collection_include_regexes_patterns_amazon_s3_bucket_regex"></a>The `amazon_s3_bucket_regex` block supports:
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex>? amazonS3BucketRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern].
  /// [amazonS3BucketRegex] Regex for Cloud Storage.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern({
    this.amazonS3BucketRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3BucketRegex': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex, Map<String, dynamic>>(amazonS3BucketRegex, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern(
      amazonS3BucketRegex: map['amazonS3BucketRegex'] == null ? null : (PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex.fromMap((map['amazonS3BucketRegex']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

