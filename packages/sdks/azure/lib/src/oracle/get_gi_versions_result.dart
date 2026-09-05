// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGiVersions.
class GetGiVersionsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? shape;
  /// A list of valid GI software versions.
  final List<String>? versions;
  final String? zone;

  /// Creates a new [GetGiVersionsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [shape] Optional.
  /// [versions] A list of valid GI software versions.
  /// [zone] Optional.
  const GetGiVersionsResult({
    this.id,
    this.location,
    this.shape,
    this.versions,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'shape': ?shape,
      'versions': ?versions,
      'zone': ?zone,
    };
  }

  factory GetGiVersionsResult.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versions: (() { final guardedValue = map['versions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
