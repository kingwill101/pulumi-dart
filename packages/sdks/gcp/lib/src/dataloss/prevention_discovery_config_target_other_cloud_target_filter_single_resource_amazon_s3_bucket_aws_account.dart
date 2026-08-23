// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount {
  /// AWS account ID.
  final pulumi.Input<String>? accountId;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount].
  /// [accountId] AWS account ID.
  const PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
