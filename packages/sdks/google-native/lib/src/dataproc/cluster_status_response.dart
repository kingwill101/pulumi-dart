// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of a cluster and its instances.
class ClusterStatusResponse {
  /// Optional. Output only. Details of cluster's state.
  final pulumi.Input<String> detail;
  /// The cluster's state.
  final pulumi.Input<String> state;
  /// Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String> stateStartTime;
  /// Additional state information that includes status reported by the agent.
  final pulumi.Input<String> substate;

  /// Creates a new [ClusterStatusResponse].
  /// [detail] Optional. Output only. Details of cluster's state.
  /// [state] The cluster's state.
  /// [stateStartTime] Time when this state was entered (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [substate] Additional state information that includes status reported by the agent.
  ClusterStatusResponse({
    required this.detail,
    required this.state,
    required this.stateStartTime,
    required this.substate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': detail,
      'state': state,
      'stateStartTime': stateStartTime,
      'substate': substate,
    };
  }

  factory ClusterStatusResponse.fromMap(Map<String, dynamic> map) {
    return ClusterStatusResponse(
      detail: (map['detail'] as String).input(),
      state: (map['state'] as String).input(),
      stateStartTime: (map['stateStartTime'] as String).input(),
      substate: (map['substate'] as String).input(),
    );
  }
}

