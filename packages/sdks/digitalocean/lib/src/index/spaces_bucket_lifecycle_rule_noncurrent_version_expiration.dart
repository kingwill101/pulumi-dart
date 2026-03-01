// ignore_for_file: unused_element, unnecessary_cast


class SpacesBucketLifecycleRuleNoncurrentVersionExpiration {
  /// Specifies the number of days after which an object's non-current versions expire.
  final int? days;

  /// Creates a new [SpacesBucketLifecycleRuleNoncurrentVersionExpiration].
  /// [days] Specifies the number of days after which an object's non-current versions expire.
  SpacesBucketLifecycleRuleNoncurrentVersionExpiration({
    this.days,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
    };
  }

  factory SpacesBucketLifecycleRuleNoncurrentVersionExpiration.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLifecycleRuleNoncurrentVersionExpiration(
      days: map['days'] == null ? null : map['days'] as int,
    );
  }
}

