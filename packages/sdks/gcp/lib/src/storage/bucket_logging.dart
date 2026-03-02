// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLogging {
  /// The bucket that will receive log objects.
  final pulumi.Input<String> logBucket;
  /// The object prefix for log objects. If it's not provided,
  /// by default GCS sets this to this bucket's name.
  final pulumi.Input<String>? logObjectPrefix;

  /// Creates a new [BucketLogging].
  /// [logBucket] The bucket that will receive log objects.
  /// [logObjectPrefix] The object prefix for log objects. If it's not provided,
  BucketLogging({
    required this.logBucket,
    this.logObjectPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logBucket': logBucket,
      'logObjectPrefix': ?logObjectPrefix,
    };
  }

  factory BucketLogging.fromMap(Map<String, dynamic> map) {
    return BucketLogging(
      logBucket: (map['logBucket'] as String).input(),
      logObjectPrefix: map['logObjectPrefix'] == null ? null : (map['logObjectPrefix'] as String).input(),
    );
  }
}

