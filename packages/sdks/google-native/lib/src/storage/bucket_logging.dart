// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
class BucketLogging {
  /// The destination bucket where the current bucket's logs should be placed.
  final pulumi.Input<String>? logBucket;
  /// A prefix for log object names.
  final pulumi.Input<String>? logObjectPrefix;

  /// Creates a new [BucketLogging].
  /// [logBucket] The destination bucket where the current bucket's logs should be placed.
  /// [logObjectPrefix] A prefix for log object names.
  BucketLogging({
    this.logBucket,
    this.logObjectPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': ?logBucket,
      'logObjectPrefix': ?logObjectPrefix,
    };
  }

  factory BucketLogging.fromMap(Map<String, dynamic> map) {
    return BucketLogging(
      logBucket: map['logBucket'] == null ? null : (map['logBucket'] as String).input(),
      logObjectPrefix: map['logObjectPrefix'] == null ? null : (map['logObjectPrefix'] as String).input(),
    );
  }
}

