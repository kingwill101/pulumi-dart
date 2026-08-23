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
  const BucketLogging({
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
      logBucket: pulumi.Input.fromValue(map['logBucket'] as String),
      logObjectPrefix: (() { final guardedValue = map['logObjectPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
