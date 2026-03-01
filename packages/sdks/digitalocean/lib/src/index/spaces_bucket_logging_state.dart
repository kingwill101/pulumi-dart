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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetBucket,
    pulumi.Output<String>? targetPrefix,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetBucket = pulumi.Input.asOptionalInput<String>(targetBucket),
      targetPrefix = pulumi.Input.asOptionalInput<String>(targetPrefix);

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
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetBucket: map['targetBucket'] == null ? null : pulumi.Output.create<String>(map['targetBucket'] as String),
      targetPrefix: map['targetPrefix'] == null ? null : pulumi.Output.create<String>(map['targetPrefix'] as String),
    );
  }
}

