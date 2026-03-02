// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MirroringDeploymentGroupLocation {
  /// The cloud location of the deployment group, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final pulumi.Input<String>? state;

  /// Creates a new [MirroringDeploymentGroupLocation].
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [state] (Output)
  MirroringDeploymentGroupLocation({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'state': ?state,
    };
  }

  factory MirroringDeploymentGroupLocation.fromMap(Map<String, dynamic> map) {
    return MirroringDeploymentGroupLocation(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

