// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationStateTimelineState {
  /// (Output)
  /// Accompanies only the transient states, which include `ADDING`,
  /// `DELETING`, and `SUSPENDING`, to denote the time until which the
  /// transient state of the resource will be effective. For instance, if the
  /// state is `ADDING`, this field shows the time when the resource state
  /// transitions to `ACTIVE`.
  final pulumi.Input<String>? effectiveTime;
  /// (Output)
  /// The state of the resource.
  final pulumi.Input<String>? state;

  /// Creates a new [DestinationStateTimelineState].
  /// [effectiveTime] (Output)
  /// [state] (Output)
  DestinationStateTimelineState({
    this.effectiveTime,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveTime': ?effectiveTime,
      'state': ?state,
    };
  }

  factory DestinationStateTimelineState.fromMap(Map<String, dynamic> map) {
    return DestinationStateTimelineState(
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
    );
  }
}

