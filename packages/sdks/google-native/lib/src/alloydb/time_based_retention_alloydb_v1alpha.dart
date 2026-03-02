// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionAlloydbV1alpha {
  /// The retention period.
  final pulumi.Input<String>? retentionPeriod;

  /// Creates a new [TimeBasedRetentionAlloydbV1alpha].
  /// [retentionPeriod] The retention period.
  TimeBasedRetentionAlloydbV1alpha({
    this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': ?retentionPeriod,
    };
  }

  factory TimeBasedRetentionAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionAlloydbV1alpha(
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod']! as String).input(),
    );
  }
}

