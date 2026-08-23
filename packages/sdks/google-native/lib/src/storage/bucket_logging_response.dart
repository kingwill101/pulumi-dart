// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The bucket's logging configuration, which defines the destination bucket and optional name prefix for the current bucket's logs.
class BucketLoggingResponse {
  /// The destination bucket where the current bucket's logs should be placed.
  final pulumi.Input<String> logBucket;
  /// A prefix for log object names.
  final pulumi.Input<String> logObjectPrefix;

  /// Creates a new [BucketLoggingResponse].
  /// [logBucket] The destination bucket where the current bucket's logs should be placed.
  /// [logObjectPrefix] A prefix for log object names.
  const BucketLoggingResponse({
    required this.logBucket,
    required this.logObjectPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': logBucket,
      'logObjectPrefix': logObjectPrefix,
    };
  }

  factory BucketLoggingResponse.fromMap(Map<String, dynamic> map) {
    return BucketLoggingResponse(
      logBucket: pulumi.Input.fromValue(map['logBucket'] as String),
      logObjectPrefix: pulumi.Input.fromValue(map['logObjectPrefix'] as String),
    );
  }
}
