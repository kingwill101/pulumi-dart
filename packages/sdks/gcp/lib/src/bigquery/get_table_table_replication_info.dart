// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTableReplicationInfo {
  /// The interval at which the source materialized view is polled for updates. The default is 300000.
  final pulumi.Input<int> replicationIntervalMs;
  /// The ID of the source dataset.
  final pulumi.Input<String> sourceDatasetId;
  /// The ID of the source project.
  final pulumi.Input<String> sourceProjectId;
  /// The ID of the source materialized view.
  final pulumi.Input<String> sourceTableId;

  /// Creates a new [GetTableTableReplicationInfo].
  /// [replicationIntervalMs] The interval at which the source materialized view is polled for updates. The default is 300000.
  /// [sourceDatasetId] The ID of the source dataset.
  /// [sourceProjectId] The ID of the source project.
  /// [sourceTableId] The ID of the source materialized view.
  GetTableTableReplicationInfo({
    required this.replicationIntervalMs,
    required this.sourceDatasetId,
    required this.sourceProjectId,
    required this.sourceTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationIntervalMs': replicationIntervalMs,
      'sourceDatasetId': sourceDatasetId,
      'sourceProjectId': sourceProjectId,
      'sourceTableId': sourceTableId,
    };
  }

  factory GetTableTableReplicationInfo.fromMap(Map<String, dynamic> map) {
    return GetTableTableReplicationInfo(
      replicationIntervalMs: pulumi.Input.fromValue(map['replicationIntervalMs'] as int),
      sourceDatasetId: pulumi.Input.fromValue(map['sourceDatasetId'] as String),
      sourceProjectId: pulumi.Input.fromValue(map['sourceProjectId'] as String),
      sourceTableId: pulumi.Input.fromValue(map['sourceTableId'] as String),
    );
  }
}

