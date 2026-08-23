// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asset_discovery_status_stat.dart';

class AssetDiscoveryStatus {
  /// The duration of the last discovery run.
  final pulumi.Input<String>? lastRunDuration;
  /// The start time of the last discovery run.
  final pulumi.Input<String>? lastRunTime;
  /// Additional information about the current state.
  final pulumi.Input<String>? message;
  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Data Stats of the asset reported by discovery.
  final pulumi.Input<List<AssetDiscoveryStatusStat>>? stats;
  /// Output only. The time when the asset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AssetDiscoveryStatus].
  /// [lastRunDuration] The duration of the last discovery run.
  /// [lastRunTime] The start time of the last discovery run.
  /// [message] Additional information about the current state.
  /// [state] Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [stats] Data Stats of the asset reported by discovery.
  /// [updateTime] Output only. The time when the asset was last updated.
  const AssetDiscoveryStatus({
    this.lastRunDuration,
    this.lastRunTime,
    this.message,
    this.state,
    this.stats,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunDuration': ?lastRunDuration,
      'lastRunTime': ?lastRunTime,
      'message': ?message,
      'state': ?state,
      'stats': ?pulumi.Input.mapOptionalInputValue<List<AssetDiscoveryStatusStat>, List<Map<String, dynamic>>>(stats, (value) => pulumi.Input.encodeList<AssetDiscoveryStatusStat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updateTime': ?updateTime,
    };
  }

  factory AssetDiscoveryStatus.fromMap(Map<String, dynamic> map) {
    return AssetDiscoveryStatus(
      lastRunDuration: (() { final guardedValue = map['lastRunDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastRunTime: (() { final guardedValue = map['lastRunTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stats: (() { final guardedValue = map['stats']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetDiscoveryStatusStat>(guardedValue, (value) => AssetDiscoveryStatusStat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
