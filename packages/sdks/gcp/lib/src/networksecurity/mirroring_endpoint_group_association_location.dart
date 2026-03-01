// ignore_for_file: unused_element, unnecessary_cast


class MirroringEndpointGroupAssociationLocation {
  /// The cloud location of the association, currently restricted to `global`.
  final String? location;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final String? state;

  /// Creates a new [MirroringEndpointGroupAssociationLocation].
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [state] (Output)
  MirroringEndpointGroupAssociationLocation({
    this.location,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'state': ?state,
    };
  }

  factory MirroringEndpointGroupAssociationLocation.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupAssociationLocation(
      location: map['location'] == null ? null : map['location'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

