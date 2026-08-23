// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectRetention {
  /// The retention policy mode. Either `Locked` or `Unlocked`.
  final pulumi.Input<String> mode;
  /// The time to retain the object until in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  ///
  /// &lt;a name="nestedContexts"&gt;&lt;/a&gt; The `contexts` block supports -
  final pulumi.Input<String> retainUntilTime;

  /// Creates a new [BucketObjectRetention].
  /// [mode] The retention policy mode. Either `Locked` or `Unlocked`.
  /// [retainUntilTime] The time to retain the object until in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  const BucketObjectRetention({
    required this.mode,
    required this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'retainUntilTime': retainUntilTime,
    };
  }

  factory BucketObjectRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectRetention(
      mode: pulumi.Input.fromValue(map['mode'] as String),
      retainUntilTime: pulumi.Input.fromValue(map['retainUntilTime'] as String),
    );
  }
}
