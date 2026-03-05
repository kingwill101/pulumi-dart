// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceEffectiveReplicationReplica {
  /// Output only. The timestamp of the latest replication snapshot taken on the active instance and is already replicated safely.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String> lastActiveSyncTime;
  /// The peer instance.
  final pulumi.Input<String> peerInstance;
  /// Output only. The replica state
  final pulumi.Input<String> state;
  /// Output only. Additional information about the replication state, if available.
  final pulumi.Input<List<String>> stateReasons;

  /// Creates a new [GetInstanceEffectiveReplicationReplica].
  /// [lastActiveSyncTime] Output only. The timestamp of the latest replication snapshot taken on the active instance and is already replicated safely.
  /// [peerInstance] The peer instance.
  /// [state] Output only. The replica state
  /// [stateReasons] Output only. Additional information about the replication state, if available.
  GetInstanceEffectiveReplicationReplica({
    required this.lastActiveSyncTime,
    required this.peerInstance,
    required this.state,
    required this.stateReasons,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastActiveSyncTime': lastActiveSyncTime,
      'peerInstance': peerInstance,
      'state': state,
      'stateReasons': stateReasons,
    };
  }

  factory GetInstanceEffectiveReplicationReplica.fromMap(Map<String, dynamic> map) {
    return GetInstanceEffectiveReplicationReplica(
      lastActiveSyncTime: pulumi.Input.fromValue(map['lastActiveSyncTime'] as String),
      peerInstance: pulumi.Input.fromValue(map['peerInstance'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateReasons: pulumi.Input.fromValue((map['stateReasons'] as List).cast<String>()),
    );
  }
}

