// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetR2BucketSippyDestination {
  /// ID of the Cloudflare API token used when writing objects to this
  /// bucket.
  final pulumi.Input<String> accessKeyId;
  final pulumi.Input<String> account;
  /// Name of the bucket on the provider.
  final pulumi.Input<String> bucket;
  /// Available values: "r2".
  final pulumi.Input<String> r2BucketSippyProvider;

  /// Creates a new [GetR2BucketSippyDestination].
  /// [accessKeyId] ID of the Cloudflare API token used when writing objects to this
  /// [account] Required.
  /// [bucket] Name of the bucket on the provider.
  /// [r2BucketSippyProvider] Available values: "r2".
  const GetR2BucketSippyDestination({
    required this.accessKeyId,
    required this.account,
    required this.bucket,
    required this.r2BucketSippyProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'account': account,
      'bucket': bucket,
      'r2BucketSippyProvider': r2BucketSippyProvider,
    };
  }

  factory GetR2BucketSippyDestination.fromMap(Map<String, dynamic> map) {
    return GetR2BucketSippyDestination(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      account: pulumi.Input.fromValue(map['account'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      r2BucketSippyProvider: pulumi.Input.fromValue(map['r2BucketSippyProvider'] as String),
    );
  }
}
