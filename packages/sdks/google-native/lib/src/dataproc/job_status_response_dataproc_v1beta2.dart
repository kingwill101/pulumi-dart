// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataproc job status.
class JobStatusResponseDataprocV1beta2 {
  /// Optional Job state details, such as an error description if the state is ERROR.
  final pulumi.Input<String> details;
  /// A state message specifying the overall job state.
  final pulumi.Input<String> state;
  /// The time when this state was entered.
  final pulumi.Input<String> stateStartTime;
  /// Additional state information, which includes status reported by the agent.
  final pulumi.Input<String> substate;

  /// Creates a new [JobStatusResponseDataprocV1beta2].
  /// [details] Optional Job state details, such as an error description if the state is ERROR.
  /// [state] A state message specifying the overall job state.
  /// [stateStartTime] The time when this state was entered.
  /// [substate] Additional state information, which includes status reported by the agent.
  JobStatusResponseDataprocV1beta2({
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

  factory JobStatusResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return JobStatusResponseDataprocV1beta2(
      details: (map['details'] as String).input(),
      state: (map['state'] as String).input(),
      stateStartTime: (map['stateStartTime'] as String).input(),
      substate: (map['substate'] as String).input(),
    );
  }
}

