// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ObjectStorageBucketLifecycleRuleExpiration {
  /// Specifies the date after which you want the corresponding action to take effect.
  final pulumi.Input<String>? date;
  /// Specifies the number of days after object creation when the specific rule action takes effect.
  final pulumi.Input<int>? days;
  /// On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct Linode Object Storage to delete expired object delete markers. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
  final pulumi.Input<bool>? expiredObjectDeleteMarker;

  /// Creates a new [ObjectStorageBucketLifecycleRuleExpiration].
  /// [date] Specifies the date after which you want the corresponding action to take effect.
  /// [days] Specifies the number of days after object creation when the specific rule action takes effect.
  /// [expiredObjectDeleteMarker] On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct Linode Object Storage to delete expired object delete markers. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.
  ObjectStorageBucketLifecycleRuleExpiration({
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

  factory ObjectStorageBucketLifecycleRuleExpiration.fromMap(Map<String, dynamic> map) {
    return ObjectStorageBucketLifecycleRuleExpiration(
      date: map['date'] == null ? null : (map['date'] as String).input(),
      days: map['days'] == null ? null : (map['days'] as int).input(),
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null ? null : (map['expiredObjectDeleteMarker'] as bool).input(),
    );
  }
}

