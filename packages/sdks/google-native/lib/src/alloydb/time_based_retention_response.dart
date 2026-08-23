// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A time based retention policy specifies that all backups within a certain time period should be retained.
class TimeBasedRetentionResponse {
  /// The retention period.
  final pulumi.Input<String> retentionPeriod;

  /// Creates a new [TimeBasedRetentionResponse].
  /// [retentionPeriod] The retention period.
  const TimeBasedRetentionResponse({
    required this.retentionPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionPeriod': retentionPeriod,
    };
  }

  factory TimeBasedRetentionResponse.fromMap(Map<String, dynamic> map) {
    return TimeBasedRetentionResponse(
      retentionPeriod: pulumi.Input.fromValue(map['retentionPeriod'] as String),
    );
  }
}
