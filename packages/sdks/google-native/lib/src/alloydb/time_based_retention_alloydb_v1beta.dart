// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionAlloydbV1beta {
  /// The retention period.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [TimeBasedRetentionAlloydbV1beta].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionAlloydbV1beta({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory TimeBasedRetentionAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionAlloydbV1beta(
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod']! as String).input(),
    );
  }
}

