// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_bucket_lock_get_r2_bucket_lock_args_doc}
/// Arguments for getR2BucketLock.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_bucket_lock_get_r2_bucket_lock_args_doc}
class GetR2BucketLockArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;

  /// Creates a new [GetR2BucketLockArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  const GetR2BucketLockArgs({
    required this.accountId,
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
    };
  }

  factory GetR2BucketLockArgs.fromMap(Map<String, dynamic> map) {
    return GetR2BucketLockArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
