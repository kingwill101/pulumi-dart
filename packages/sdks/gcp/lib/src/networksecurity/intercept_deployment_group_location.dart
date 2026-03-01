// ignore_for_file: unused_element, unnecessary_cast


class InterceptDeploymentGroupLocation {
  /// The cloud location of the deployment group, currently restricted to `global`.
  final String? location;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [InterceptDeploymentGroupLocation].
  /// [location] The cloud location of the deployment group, currently restricted to `global`.
  /// [state] (Output)
  InterceptDeploymentGroupLocation({
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
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

