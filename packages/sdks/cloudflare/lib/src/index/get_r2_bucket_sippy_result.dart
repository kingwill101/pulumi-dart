// ignore_for_file: unused_element, unnecessary_cast

import 'get_r2_bucket_sippy_destination.dart';
import 'get_r2_bucket_sippy_source.dart';

/// Result data returned by getR2BucketSippy.
class GetR2BucketSippyResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  /// Details about the configured destination bucket.
  final GetR2BucketSippyDestination? destination;
  /// State of Sippy for this bucket.
  final bool? enabled;
  /// Details about the configured source bucket.
  final GetR2BucketSippySource? source;

  /// Creates a new [GetR2BucketSippyResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [destination] Details about the configured destination bucket.
  /// [enabled] State of Sippy for this bucket.
  /// [source] Details about the configured source bucket.
  const GetR2BucketSippyResult({
    this.accountId,
    this.bucketName,
    this.destination,
    this.enabled,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'destination': ?destination?.toMap(),
      'enabled': ?enabled,
      'source': ?source?.toMap(),
    };
  }

  factory GetR2BucketSippyResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketSippyResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return GetR2BucketSippyDestination.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return GetR2BucketSippySource.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
