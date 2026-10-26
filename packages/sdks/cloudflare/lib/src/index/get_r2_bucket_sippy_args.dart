// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_bucket_sippy_get_r2_bucket_sippy_args_doc}
/// Arguments for getR2BucketSippy.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_bucket_sippy_get_r2_bucket_sippy_args_doc}
class GetR2BucketSippyArgs {
  /// Cloudflare account ID that owns the R2 resource.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;

  /// Creates a new [GetR2BucketSippyArgs].
  /// [accountId] Cloudflare account ID that owns the R2 resource.
  /// [bucketName] Name of the bucket.
  const GetR2BucketSippyArgs({
    required this.accountId,
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
    };
  }

  factory GetR2BucketSippyArgs.fromMap(Map<String, dynamic> map) {
    return GetR2BucketSippyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
