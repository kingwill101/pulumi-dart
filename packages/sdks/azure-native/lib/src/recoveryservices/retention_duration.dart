// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Retention duration.
class RetentionDuration {
  /// Count of duration types. Retention duration is obtained by the counting the duration type Count times.
  /// For example, when Count = 3 and DurationType = Weeks, retention duration will be three weeks.
  final pulumi.Input<int>? count;
  /// Retention duration type of retention policy.
  final pulumi.Input<String>? durationType;

  /// Creates a new [RetentionDuration].
  /// [count] Count of duration types. Retention duration is obtained by the counting the duration type Count times.
  /// [durationType] Retention duration type of retention policy.
  RetentionDuration({
    this.count,
    this.durationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'durationType': ?durationType,
    };
  }

  factory RetentionDuration.fromMap(Map<String, dynamic> map) {
    return RetentionDuration(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      durationType: map['durationType'] == null ? null : (map['durationType'] as String).input(),
    );
  }
}

