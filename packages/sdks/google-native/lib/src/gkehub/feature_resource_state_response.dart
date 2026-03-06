// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FeatureResourceState describes the state of a Feature *resource* in the GkeHub API. See `FeatureState` for the "running state" of the Feature in the Hub and across Memberships.
class FeatureResourceStateResponse {
  /// The current state of the Feature resource in the Hub API.
  final pulumi.Input<String> state;

  /// Creates a new [FeatureResourceStateResponse].
  /// [state] The current state of the Feature resource in the Hub API.
  const FeatureResourceStateResponse({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory FeatureResourceStateResponse.fromMap(Map<String, dynamic> map) {
    return FeatureResourceStateResponse(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

