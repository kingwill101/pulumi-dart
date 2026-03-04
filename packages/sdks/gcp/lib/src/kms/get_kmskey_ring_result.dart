// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKMSKeyRing.
class GetKMSKeyRingResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String? project;

  /// Creates a new [GetKMSKeyRingResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  GetKMSKeyRingResult({
    required this.id,
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
    };
  }

  factory GetKMSKeyRingResult.fromMap(Map<String, dynamic> map) {
    return GetKMSKeyRingResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
