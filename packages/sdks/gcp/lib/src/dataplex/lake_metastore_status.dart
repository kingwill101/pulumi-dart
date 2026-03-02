// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LakeMetastoreStatus {
  /// The URI of the endpoint used to access the Metastore service.
  final pulumi.Input<String>? endpoint;
  /// Additional information about the current status.
  final pulumi.Input<String>? message;
  /// Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  final pulumi.Input<String>? state;
  /// Output only. The time when the lake was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [LakeMetastoreStatus].
  /// [endpoint] The URI of the endpoint used to access the Metastore service.
  /// [message] Additional information about the current status.
  /// [state] Output only. Current state of the lake. Possible values: STATE_UNSPECIFIED, ACTIVE, CREATING, DELETING, ACTION_REQUIRED
  /// [updateTime] Output only. The time when the lake was last updated.
  LakeMetastoreStatus({
    this.endpoint,
    this.message,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'message': ?message,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory LakeMetastoreStatus.fromMap(Map<String, dynamic> map) {
    return LakeMetastoreStatus(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

