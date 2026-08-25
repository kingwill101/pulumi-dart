// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InterceptDeploymentGroupLocation {
  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String?>? location;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final pulumi.Input<String?>? state;

  /// Creates a new [InterceptDeploymentGroupLocation].
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [state] (Output)
  const InterceptDeploymentGroupLocation({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'state': ?state,
    };
  }

  factory InterceptDeploymentGroupLocation.fromMap(Map<String, dynamic> map) {
    return InterceptDeploymentGroupLocation(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
