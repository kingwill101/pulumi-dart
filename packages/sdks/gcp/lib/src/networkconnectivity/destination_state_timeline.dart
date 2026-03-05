// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_state_timeline_state.dart';

class DestinationStateTimeline {
  /// (Output)
  /// The state and activation time details of the resource state.
  /// Structure is documented below.
  final pulumi.Input<List<DestinationStateTimelineState>>? states;

  /// Creates a new [DestinationStateTimeline].
  /// [states] (Output)
  DestinationStateTimeline({
    this.states,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'states': ?pulumi.Input.mapOptionalInputValue<List<DestinationStateTimelineState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<DestinationStateTimelineState, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DestinationStateTimeline.fromMap(Map<String, dynamic> map) {
    return DestinationStateTimeline(
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DestinationStateTimelineState>(guardedValue, (value) => DestinationStateTimelineState.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

