// ignore_for_file: unused_element, unnecessary_cast


class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex {
  /// Regex to test the AWS account ID against. If empty, all accounts match. Example: arn:aws:organizations::123:account/o-b2c3d4/345
  final String? accountIdRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex].
  /// [accountIdRegex] Regex to test the AWS account ID against. If empty, all accounts match. Example: arn:aws:organizations::123:account/o-b2c3d4/345
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex({
    this.accountIdRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIdRegex': ?accountIdRegex,
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex(
      accountIdRegex: map['accountIdRegex'] == null ? null : map['accountIdRegex'] as String,
    );
  }
}

