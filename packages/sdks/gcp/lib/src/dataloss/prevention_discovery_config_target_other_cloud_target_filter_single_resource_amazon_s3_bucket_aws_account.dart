// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount {
  /// AWS account ID.
  final String? accountId;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount].
  /// [accountId] AWS account ID.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
    );
  }
}

