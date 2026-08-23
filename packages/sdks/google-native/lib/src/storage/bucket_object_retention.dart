// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A collection of object level retention parameters.
class BucketObjectRetention {
  /// The bucket's object retention mode, can only be Unlocked or Locked.
  final pulumi.Input<String>? mode;
  /// A time in RFC 3339 format until which object retention protects this object.
  final pulumi.Input<String>? retainUntilTime;

  /// Creates a new [BucketObjectRetention].
  /// [mode] The bucket's object retention mode, can only be Unlocked or Locked.
  /// [retainUntilTime] A time in RFC 3339 format until which object retention protects this object.
  const BucketObjectRetention({
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
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainUntilTime: (() { final guardedValue = map['retainUntilTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
