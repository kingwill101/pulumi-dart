// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventHubRetentionDescription {
  /// Specifies the Cleanup Policy for the EventHub. Possible values are `Delete` and `Compact`. Changing this forces a new resource to be created.
  final pulumi.Input<String> cleanupPolicy;
  /// Specifies the number of hours to retain the events for this Event Hub. The value is only used when `cleanup_policy` is `Delete`.
  final pulumi.Input<int>? retentionTimeInHours;
  /// Specifies the number of hours to retain the tombstones markers of a compacted Event Hub. The value is only used when `cleanup_policy` is `Compact`.
  final pulumi.Input<int>? tombstoneRetentionTimeInHours;

  /// Creates a new [EventHubRetentionDescription].
  /// [cleanupPolicy] Specifies the Cleanup Policy for the EventHub. Possible values are `Delete` and `Compact`. Changing this forces a new resource to be created.
  /// [retentionTimeInHours] Specifies the number of hours to retain the events for this Event Hub. The value is only used when `cleanup_policy` is `Delete`.
  /// [tombstoneRetentionTimeInHours] Specifies the number of hours to retain the tombstones markers of a compacted Event Hub. The value is only used when `cleanup_policy` is `Compact`.
  EventHubRetentionDescription({
    required this.cleanupPolicy,
    this.retentionTimeInHours,
    this.tombstoneRetentionTimeInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupPolicy': cleanupPolicy,
      'retentionTimeInHours': ?retentionTimeInHours,
      'tombstoneRetentionTimeInHours': ?tombstoneRetentionTimeInHours,
    };
  }

  factory EventHubRetentionDescription.fromMap(Map<String, dynamic> map) {
    return EventHubRetentionDescription(
      cleanupPolicy: (map['cleanupPolicy'] as String).input(),
      retentionTimeInHours: map['retentionTimeInHours'] == null ? null : (map['retentionTimeInHours'] as int).input(),
      tombstoneRetentionTimeInHours: map['tombstoneRetentionTimeInHours'] == null ? null : (map['tombstoneRetentionTimeInHours'] as int).input(),
    );
  }
}

