// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGiVersions.
class GetGiVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? shape;
  /// A list of valid GI software versions.
  final List<String> versions;
  final String? zone;

  /// Creates a new [GetGiVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [shape] Optional.
  /// [versions] A list of valid GI software versions.
  /// [zone] Optional.
  GetGiVersionsResult({
    required this.id,
    required this.location,
    this.shape,
    required this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'shape': ?shape,
      'versions': versions,
      'zone': ?zone,
    };
  }

  factory GetGiVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      shape: map['shape'] == null ? null : map['shape'] as String,
      versions: (map['versions'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

