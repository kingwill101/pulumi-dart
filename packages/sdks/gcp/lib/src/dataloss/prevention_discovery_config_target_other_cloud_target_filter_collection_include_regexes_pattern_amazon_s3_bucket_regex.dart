// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex_aws_account_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex {
  /// The AWS account regex
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex>? awsAccountRegex;
  /// Regex to test the bucket name against. If empty, all buckets match.
  final pulumi.Input<String>? bucketNameRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex].
  /// [awsAccountRegex] The AWS account regex
  /// [bucketNameRegex] Regex to test the bucket name against. If empty, all buckets match.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex({
    this.awsAccountRegex,
    this.bucketNameRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccountRegex': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex, Map<String, dynamic>>(awsAccountRegex, (value) => value.toMap()),
      'bucketNameRegex': ?bucketNameRegex,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex(
      awsAccountRegex: map['awsAccountRegex'] == null ? null : (PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex.fromMap((map['awsAccountRegex']! as Map).cast<String, dynamic>())).input(),
      bucketNameRegex: map['bucketNameRegex'] == null ? null : (map['bucketNameRegex']! as String).input(),
    );
  }
}

