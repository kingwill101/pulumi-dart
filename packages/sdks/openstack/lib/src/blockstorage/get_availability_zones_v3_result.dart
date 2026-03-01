// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAvailabilityZonesV3.
class GetAvailabilityZonesV3Result {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The names of the availability zones, ordered alphanumerically, that
  /// match the queried `state`.
  final List<String> names;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final String? state;

  /// Creates a new [GetAvailabilityZonesV3Result].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] The names of the availability zones, ordered alphanumerically, that
  /// [region] See Argument Reference above.
  /// [state] See Argument Reference above.
  GetAvailabilityZonesV3Result({
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

  factory GetAvailabilityZonesV3Result.fromMap(Map<String, dynamic> map) {
    return GetAvailabilityZonesV3Result(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

