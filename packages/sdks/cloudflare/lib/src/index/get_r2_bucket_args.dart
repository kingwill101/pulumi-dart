// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_bucket_get_r2_bucket_args_doc}
/// Arguments for getR2Bucket.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_bucket_get_r2_bucket_args_doc}
class GetR2BucketArgs {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;

  /// Creates a new [GetR2BucketArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  const GetR2BucketArgs({
    this.accountId,
    required this.bucketName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': bucketName,
    };
  }

  factory GetR2BucketArgs.fromMap(Map<String, dynamic> map) {
    return GetR2BucketArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
    );
  }
}
