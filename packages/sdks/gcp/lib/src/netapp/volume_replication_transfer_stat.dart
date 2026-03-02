// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeReplicationTransferStat {
  /// (Output)
  /// The elapsed time since the creation of the snapshot on the source volume that was last replicated
  /// to the destination volume. Lag time represents the difference in age of the destination volume
  /// data in relation to the source volume data.
  final pulumi.Input<String>? lagDuration;
  /// (Output)
  /// Size of last completed transfer in bytes.
  final pulumi.Input<String>? lastTransferBytes;
  /// (Output)
  /// Time taken during last completed transfer.
  final pulumi.Input<String>? lastTransferDuration;
  /// (Output)
  /// Time when last transfer completed. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? lastTransferEndTime;
  /// (Output)
  /// A message describing the cause of the last transfer failure.
  final pulumi.Input<String>? lastTransferError;
  /// (Output)
  /// Cumulative time taken across all transfers for the replication relationship.
  final pulumi.Input<String>? totalTransferDuration;
  /// (Output)
  /// Cumulative bytes transferred so far for the replication relationship.
  final pulumi.Input<String>? transferBytes;
  /// (Output)
  /// Time when progress was updated last. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [VolumeReplicationTransferStat].
  /// [lagDuration] (Output)
  /// [lastTransferBytes] (Output)
  /// [lastTransferDuration] (Output)
  /// [lastTransferEndTime] (Output)
  /// [lastTransferError] (Output)
  /// [totalTransferDuration] (Output)
  /// [transferBytes] (Output)
  /// [updateTime] (Output)
  VolumeReplicationTransferStat({
    this.lagDuration,
    this.lastTransferBytes,
    this.lastTransferDuration,
    this.lastTransferEndTime,
    this.lastTransferError,
    this.totalTransferDuration,
    this.transferBytes,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lagDuration': ?lagDuration,
      'lastTransferBytes': ?lastTransferBytes,
      'lastTransferDuration': ?lastTransferDuration,
      'lastTransferEndTime': ?lastTransferEndTime,
      'lastTransferError': ?lastTransferError,
      'totalTransferDuration': ?totalTransferDuration,
      'transferBytes': ?transferBytes,
      'updateTime': ?updateTime,
    };
  }

  factory VolumeReplicationTransferStat.fromMap(Map<String, dynamic> map) {
    return VolumeReplicationTransferStat(
      lagDuration: map['lagDuration'] == null ? null : (map['lagDuration']! as String).input(),
      lastTransferBytes: map['lastTransferBytes'] == null ? null : (map['lastTransferBytes']! as String).input(),
      lastTransferDuration: map['lastTransferDuration'] == null ? null : (map['lastTransferDuration']! as String).input(),
      lastTransferEndTime: map['lastTransferEndTime'] == null ? null : (map['lastTransferEndTime']! as String).input(),
      lastTransferError: map['lastTransferError'] == null ? null : (map['lastTransferError']! as String).input(),
      totalTransferDuration: map['totalTransferDuration'] == null ? null : (map['totalTransferDuration']! as String).input(),
      transferBytes: map['transferBytes'] == null ? null : (map['transferBytes']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

