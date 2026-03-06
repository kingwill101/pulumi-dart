// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketLogging {
  /// The bucket that will receive log objects.
  final pulumi.Input<String> logBucket;
  /// The object prefix for log objects. If it's not provided, by default Google Cloud Storage sets this to this bucket's name.
  final pulumi.Input<String> logObjectPrefix;

  /// Creates a new [GetBucketLogging].
  /// [logBucket] The bucket that will receive log objects.
  /// [logObjectPrefix] The object prefix for log objects. If it's not provided, by default Google Cloud Storage sets this to this bucket's name.
  const GetBucketLogging({
    required this.logBucket,
    required this.logObjectPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': logBucket,
      'logObjectPrefix': logObjectPrefix,
    };
  }

  factory GetBucketLogging.fromMap(Map<String, dynamic> map) {
    return GetBucketLogging(
      logBucket: pulumi.Input.fromValue(map['logBucket'] as String),
      logObjectPrefix: pulumi.Input.fromValue(map['logObjectPrefix'] as String),
    );
  }
}

