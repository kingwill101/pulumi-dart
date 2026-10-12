// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpacesBucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days after which an object's non-current versions expire.
  final pulumi.Input<int?>? days;

  /// Creates a new [SpacesBucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days after which an object's non-current versions expire.
  const SpacesBucketLifecycleRuleNoncurrentVersionExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory SpacesBucketLifecycleRuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLifecycleRuleNoncurrentVersionExpiration(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
