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
  SpacesBucketLoggingState({
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
      bucket: map['bucket'] == null ? null : (map['bucket']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      targetBucket: map['targetBucket'] == null ? null : (map['targetBucket']! as String).input(),
      targetPrefix: map['targetPrefix'] == null ? null : (map['targetPrefix']! as String).input(),
    );
  }
}

