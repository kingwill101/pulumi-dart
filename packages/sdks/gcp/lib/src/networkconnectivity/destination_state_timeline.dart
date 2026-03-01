// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_state_timeline_state.dart';

class DestinationStateTimeline {
  /// (Output)
  /// The state and activation time details of the resource state.
  /// Structure is documented below.
  final List<DestinationStateTimelineState>? states;

  /// Creates a new [DestinationStateTimeline].
  /// [states] (Output)
  DestinationStateTimeline({
    this.states,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'states': ?states == null ? null : pulumi.Input.encodeList<DestinationStateTimelineState, Map<String, dynamic>>(states!, (value) => value.toMap()),
    };
  }

  factory DestinationStateTimeline.fromMap(Map<String, dynamic> map) {
    return DestinationStateTimeline(
      states: map['states'] == null ? null : pulumi.Input.decodeList<DestinationStateTimelineState>(map['states'], (value) => DestinationStateTimelineState.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

