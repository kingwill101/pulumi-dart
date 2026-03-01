// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_spaces_bucket_logging_spaces_bucket_logging_args_doc}
/// The set of arguments for SpacesBucketLogging.
/// {@endtemplate}
/// {@macro pulumi_index_spaces_bucket_logging_spaces_bucket_logging_args_doc}
class SpacesBucketLoggingArgs {
  /// The name of the bucket which will be logged.
  final pulumi.Input<String> bucket;
  /// The region where the bucket resides.
  final pulumi.Input<String> region;
  /// The name of the bucket which will store the logs.
  final pulumi.Input<String> targetBucket;
  /// The prefix for the log files.
  final pulumi.Input<String> targetPrefix;

  /// Creates a new [SpacesBucketLoggingArgs].
  /// [bucket] The name of the bucket which will be logged.
  /// [region] The region where the bucket resides.
  /// [targetBucket] The name of the bucket which will store the logs.
  /// [targetPrefix] The prefix for the log files.
  SpacesBucketLoggingArgs({
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> region,
    required pulumi.Output<String> targetBucket,
    required pulumi.Output<String> targetPrefix,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      region = pulumi.Input.asInput<String>(region),
      targetBucket = pulumi.Input.asInput<String>(targetBucket),
      targetPrefix = pulumi.Input.asInput<String>(targetPrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': region,
      'targetBucket': targetBucket,
      'targetPrefix': targetPrefix,
    };
  }

  factory SpacesBucketLoggingArgs.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLoggingArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      region: pulumi.Output.create<String>(map['region'] as String),
      targetBucket: pulumi.Output.create<String>(map['targetBucket'] as String),
      targetPrefix: pulumi.Output.create<String>(map['targetPrefix'] as String),
    );
  }
}

