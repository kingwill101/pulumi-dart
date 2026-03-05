// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_state_state.dart';

class FeatureState {
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final pulumi.Input<List<FeatureStateState>>? states;

  /// Creates a new [FeatureState].
  /// [states] (Output)
  FeatureState({
    this.states,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'states': ?pulumi.Input.mapOptionalInputValue<List<FeatureStateState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<FeatureStateState, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeatureState.fromMap(Map<String, dynamic> map) {
    return FeatureState(
      states: (() { final guardedValue = map['states']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureStateState>(guardedValue, (value) => FeatureStateState.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

