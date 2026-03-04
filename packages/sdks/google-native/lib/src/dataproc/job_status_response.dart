// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataproc job status.
class JobStatusResponse {
  /// Optional. Output only. Job state details, such as an error description if the state is ERROR.
  final pulumi.Input<String> details;

  /// A state message specifying the overall job state.
  final pulumi.Input<String> state;

  /// The time when this state was entered.
  final pulumi.Input<String> stateStartTime;

  /// Additional state information, which includes status reported by the agent.
  final pulumi.Input<String> substate;

  /// Creates a new [JobStatusResponse].
  /// [details] Optional. Output only. Job state details, such as an error description if the state is ERROR.
  /// [state] A state message specifying the overall job state.
  /// [stateStartTime] The time when this state was entered.
  /// [substate] Additional state information, which includes status reported by the agent.
  JobStatusResponse({
    required this.details,
    required this.state,
    required this.stateStartTime,
    required this.substate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'state': state,
      'stateStartTime': stateStartTime,
      'substate': substate,
    };
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      details: pulumi.Input.fromValue(map['details'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateStartTime: pulumi.Input.fromValue(map['stateStartTime'] as String),
      substate: pulumi.Input.fromValue(map['substate'] as String),
    );
  }
}
