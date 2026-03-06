// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobStatus {
  /// Optional job state details, such as an error description if the state is ERROR.
  final pulumi.Input<String>? details;
  /// A state message specifying the overall job state.
  final pulumi.Input<String>? state;
  /// The time when this state was entered.
  final pulumi.Input<String>? stateStartTime;
  /// Additional state information, which includes status reported by the agent.
  final pulumi.Input<String>? substate;

  /// Creates a new [JobStatus].
  /// [details] Optional job state details, such as an error description if the state is ERROR.
  /// [state] A state message specifying the overall job state.
  /// [stateStartTime] The time when this state was entered.
  /// [substate] Additional state information, which includes status reported by the agent.
  const JobStatus({
    this.details,
    this.state,
    this.stateStartTime,
    this.substate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'state': ?state,
      'stateStartTime': ?stateStartTime,
      'substate': ?substate,
    };
  }

  factory JobStatus.fromMap(Map<String, dynamic> map) {
    return JobStatus(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateStartTime: (() { final guardedValue = map['stateStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      substate: (() { final guardedValue = map['substate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

