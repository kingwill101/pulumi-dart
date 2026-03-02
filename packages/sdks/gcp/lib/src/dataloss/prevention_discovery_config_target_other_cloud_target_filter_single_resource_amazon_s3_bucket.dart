// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket_aws_account.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket {
  /// The AWS account.
  final pulumi.Input<PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount>? awsAccount;
  /// The bucket name.
  final pulumi.Input<String>? bucketName;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket].
  /// [awsAccount] The AWS account.
  /// [bucketName] The bucket name.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket({
    this.awsAccount,
    this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccount': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount, Map<String, dynamic>>(awsAccount, (value) => value.toMap()),
      'bucketName': ?bucketName,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket(
      awsAccount: map['awsAccount'] == null ? null : (PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount.fromMap((map['awsAccount']! as Map).cast<String, dynamic>())).input(),
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
    );
  }
}

