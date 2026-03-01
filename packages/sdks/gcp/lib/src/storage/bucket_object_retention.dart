// ignore_for_file: unused_element, unnecessary_cast


class BucketObjectRetention {
  /// The retention policy mode. Either `Locked` or `Unlocked`.
  final String mode;
  /// The time to retain the object until in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  ///
  /// <a name="nested_contexts"></a> The `contexts` block supports -
  final String retainUntilTime;

  /// Creates a new [BucketObjectRetention].
  /// [mode] The retention policy mode. Either `Locked` or `Unlocked`.
  /// [retainUntilTime] The time to retain the object until in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  BucketObjectRetention({
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
      mode: map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] as String,
    );
  }
}

