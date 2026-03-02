// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAvailabilityZones.
class GetAvailabilityZonesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The names of the availability zones, ordered alphanumerically, that match the queried `state`
  final List<String> names;
  final String region;
  final String? state;

  /// Creates a new [GetAvailabilityZonesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] The names of the availability zones, ordered alphanumerically, that match the queried `state`
  /// [region] Required.
  /// [state] Optional.
  GetAvailabilityZonesResult({
    required this.id,
    required this.names,
    required this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'names': names,
      'region': region,
      'state': ?state,
    };
  }

  factory GetAvailabilityZonesResult.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
      state: map['state'] == null ? null : map['state']! as String,
    );
  }
}

