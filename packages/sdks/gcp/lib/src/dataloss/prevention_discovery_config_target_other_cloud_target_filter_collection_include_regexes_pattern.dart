// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"&gt;&lt;/a&gt;The `amazonS3BucketRegex` block supports:
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex?>? amazonS3BucketRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern].
  /// [amazonS3BucketRegex] Regex for Cloud Storage.
  const PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern({
    this.amazonS3BucketRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3BucketRegex': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex, Map<String, dynamic>>(amazonS3BucketRegex, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern(
      amazonS3BucketRegex: (() { final guardedValue = map['amazonS3BucketRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
