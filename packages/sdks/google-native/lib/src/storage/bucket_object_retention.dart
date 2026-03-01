// ignore_for_file: unused_element, unnecessary_cast


/// A collection of object level retention parameters.
class BucketObjectRetention {
  /// The bucket's object retention mode, can only be Unlocked or Locked.
  final String? mode;
  /// A time in RFC 3339 format until which object retention protects this object.
  final String? retainUntilTime;

  /// Creates a new [BucketObjectRetention].
  /// [mode] The bucket's object retention mode, can only be Unlocked or Locked.
  /// [retainUntilTime] A time in RFC 3339 format until which object retention protects this object.
  BucketObjectRetention({
    this.mode,
    this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'retainUntilTime': ?retainUntilTime,
    };
  }

  factory BucketObjectRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectRetention(
      mode: map['mode'] == null ? null : map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] == null ? null : map['retainUntilTime'] as String,
    );
  }
}

