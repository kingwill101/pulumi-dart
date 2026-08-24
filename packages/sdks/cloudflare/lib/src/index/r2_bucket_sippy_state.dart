// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'r2_bucket_sippy_destination.dart';
import 'r2_bucket_sippy_source.dart';

/// Input properties used for looking up and filtering R2BucketSippy resources.
class R2BucketSippyState {
  /// Account ID.
  final pulumi.Input<String?>? accountId;
  /// Name of the bucket.
  final pulumi.Input<String?>? bucketName;
  /// R2 bucket to copy objects to.
  final pulumi.Input<R2BucketSippyDestination?>? destination;
  /// State of Sippy for this bucket.
  final pulumi.Input<bool?>? enabled;
  /// Jurisdiction of the bucket
  final pulumi.Input<String?>? jurisdiction;
  /// AWS S3 bucket to copy objects from.
  final pulumi.Input<R2BucketSippySource?>? source;

  /// Creates a new [R2BucketSippyState].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [destination] R2 bucket to copy objects to.
  /// [enabled] State of Sippy for this bucket.
  /// [jurisdiction] Jurisdiction of the bucket
  /// [source] AWS S3 bucket to copy objects from.
  const R2BucketSippyState({
    this.accountId,
    this.bucketName,
    this.destination,
    this.enabled,
    this.jurisdiction,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'destination': ?pulumi.Input.mapOptionalInputValue<R2BucketSippyDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enabled': ?enabled,
      'jurisdiction': ?jurisdiction,
      'source': ?pulumi.Input.mapOptionalInputValue<R2BucketSippySource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory R2BucketSippyState.fromMap(Map<String, dynamic> map) {
    return R2BucketSippyState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(R2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
