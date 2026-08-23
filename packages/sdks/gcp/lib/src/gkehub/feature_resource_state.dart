// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureResourceState {
  /// (Output)
  /// Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  final pulumi.Input<bool>? hasResources;
  /// (Output)
  /// Output only. The "running state" of the Feature in this Hub.
  /// Structure is documented below.
  final pulumi.Input<String>? state;

  /// Creates a new [FeatureResourceState].
  /// [hasResources] (Output)
  /// [state] (Output)
  const FeatureResourceState({
    this.hasResources,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasResources': ?hasResources,
      'state': ?state,
    };
  }

  factory FeatureResourceState.fromMap(Map<String, dynamic> map) {
    return FeatureResourceState(
      hasResources: (() { final guardedValue = map['hasResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
