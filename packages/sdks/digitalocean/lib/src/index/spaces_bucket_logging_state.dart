// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpacesBucketLogging resources.
class SpacesBucketLoggingState {
  /// The name of the bucket which will be logged.
  final pulumi.Input<String>? bucket;
  /// The region where the bucket resides.
  final pulumi.Input<String>? region;
  /// The name of the bucket which will store the logs.
  final pulumi.Input<String>? targetBucket;
  /// The prefix for the log files.
  final pulumi.Input<String>? targetPrefix;

  /// Creates a new [SpacesBucketLoggingState].
  /// [bucket] The name of the bucket which will be logged.
  /// [region] The region where the bucket resides.
  /// [targetBucket] The name of the bucket which will store the logs.
  /// [targetPrefix] The prefix for the log files.
  const SpacesBucketLoggingState({
    this.bucket,
    this.region,
    this.targetBucket,
    this.targetPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'targetBucket': ?targetBucket,
      'targetPrefix': ?targetPrefix,
    };
  }

  factory SpacesBucketLoggingState.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLoggingState(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBucket: (() { final guardedValue = map['targetBucket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetPrefix: (() { final guardedValue = map['targetPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

