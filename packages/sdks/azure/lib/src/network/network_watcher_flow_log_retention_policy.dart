// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkWatcherFlowLogRetentionPolicy {
  /// The number of days to retain flow log records.
  final pulumi.Input<int> days;
  /// Boolean flag to enable/disable retention.
  final pulumi.Input<bool> enabled;

  /// Creates a new [NetworkWatcherFlowLogRetentionPolicy].
  /// [days] The number of days to retain flow log records.
  /// [enabled] Boolean flag to enable/disable retention.
  const NetworkWatcherFlowLogRetentionPolicy({
    required this.days,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': days,
      'enabled': enabled,
    };
  }

  factory NetworkWatcherFlowLogRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherFlowLogRetentionPolicy(
      days: pulumi.Input.fromValue((map['days'] as num).toInt()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
