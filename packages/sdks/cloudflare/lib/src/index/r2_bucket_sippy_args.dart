// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_sippy_destination.dart';
import 'r2_bucket_sippy_source.dart';

/// {@template pulumi_index_r2_bucket_sippy_r2_bucket_sippy_args_doc}
/// The set of arguments for R2BucketSippy.
/// {@endtemplate}
/// {@macro pulumi_index_r2_bucket_sippy_r2_bucket_sippy_args_doc}
class R2BucketSippyArgs {
  /// Account ID.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// R2 bucket to copy objects to.
  final pulumi.Input<R2BucketSippyDestination?>? destination;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// AWS S3 bucket to copy objects from.
  final pulumi.Input<R2BucketSippySource?>? source;

  /// Creates a new [R2BucketSippyArgs].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [destination] R2 bucket to copy objects to.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [source] AWS S3 bucket to copy objects from.
  const R2BucketSippyArgs({
    required this.accountId,
    required this.bucketName,
    this.destination,
    this.jurisdiction,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'destination': ?pulumi.Input.mapOptionalInputValue<R2BucketSippyDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'jurisdiction': ?jurisdiction,
      'source': ?pulumi.Input.mapOptionalInputValue<R2BucketSippySource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory R2BucketSippyArgs.fromMap(Map<String, dynamic> map) {
    return R2BucketSippyArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
