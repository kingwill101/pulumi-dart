// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExtendedLocations.
class GetExtendedLocationsResult {
  /// The available extended locations for the Azure Location.
  final List<String> extendedLocations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;

  /// Creates a new [GetExtendedLocationsResult].
  /// [extendedLocations] The available extended locations for the Azure Location.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  const GetExtendedLocationsResult({
    required this.extendedLocations,
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocations': extendedLocations,
      'id': id,
      'location': location,
    };
  }

  factory GetExtendedLocationsResult.fromMap(Map<String, dynamic> map) {
    return GetExtendedLocationsResult(
      extendedLocations: (map['extendedLocations'] as List).cast<String>(),
      id: map['id'] as String,
      location: map['location'] as String,
    );
  }
}

