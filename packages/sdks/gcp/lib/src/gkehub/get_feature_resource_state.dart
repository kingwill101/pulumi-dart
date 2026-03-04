// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFeatureResourceState {
  /// Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  final pulumi.Input<bool> hasResources;

  /// The current state of the Feature resource in the Hub API.
  final pulumi.Input<String> state;

  /// Creates a new [GetFeatureResourceState].
  /// [hasResources] Whether this Feature has outstanding resources that need to be cleaned up before it can be disabled.
  /// [state] The current state of the Feature resource in the Hub API.
  GetFeatureResourceState({required this.hasResources, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hasResources': hasResources, 'state': state};
  }

  factory GetFeatureResourceState.fromMap(Map<String, dynamic> map) {
    return GetFeatureResourceState(
      hasResources: pulumi.Input.fromValue(map['hasResources'] as bool),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
