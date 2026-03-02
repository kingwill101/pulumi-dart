// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpacesBucketLifecycleRuleExpiration {
  /// Specifies the date/time after which you want applicable objects to expire. The argument uses
  /// RFC3339 format, e.g. "2020-03-22T15:03:55Z" or parts thereof e.g. "2019-02-28".
  final pulumi.Input<String>? date;
  /// Specifies the number of days after object creation when the applicable objects will expire.
  final pulumi.Input<int>? days;
  /// On a versioned bucket (versioning-enabled or versioning-suspended
  /// bucket), setting this to true directs Spaces to delete expired object delete markers.
  final pulumi.Input<bool>? expiredObjectDeleteMarker;

  /// Creates a new [SpacesBucketLifecycleRuleExpiration].
  /// [date] Specifies the date/time after which you want applicable objects to expire. The argument uses
  /// [days] Specifies the number of days after object creation when the applicable objects will expire.
  /// [expiredObjectDeleteMarker] On a versioned bucket (versioning-enabled or versioning-suspended
  SpacesBucketLifecycleRuleExpiration({
    this.date,
    this.days,
    this.expiredObjectDeleteMarker,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': ?date,
      'days': ?days,
      'expiredObjectDeleteMarker': ?expiredObjectDeleteMarker,
    };
  }

  factory SpacesBucketLifecycleRuleExpiration.fromMap(Map<String, dynamic> map) {
    return SpacesBucketLifecycleRuleExpiration(
      date: map['date'] == null ? null : (map['date']! as String).input(),
      days: map['days'] == null ? null : (map['days']! as int).input(),
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null ? null : (map['expiredObjectDeleteMarker']! as bool).input(),
    );
  }
}

