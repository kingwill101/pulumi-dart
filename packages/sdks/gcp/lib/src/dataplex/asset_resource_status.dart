// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetResourceStatus {
  /// Additional information about the current state.
  final pulumi.Input<String>? message;
  /// Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Output only. The time when the asset was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AssetResourceStatus].
  /// [message] Additional information about the current state.
  /// [state] Output only. Current state of the asset. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [updateTime] Output only. The time when the asset was last updated.
  AssetResourceStatus({
    this.message,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory AssetResourceStatus.fromMap(Map<String, dynamic> map) {
    return AssetResourceStatus(
      message: map['message'] == null ? null : (map['message']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

