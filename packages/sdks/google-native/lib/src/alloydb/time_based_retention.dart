// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetention {
  /// The retention period.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [TimeBasedRetention].
  /// [retentionPeriod] The retention period.
  TimeBasedRetention({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory TimeBasedRetention.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetention(
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod']! as String).input(),
    );
  }
}

