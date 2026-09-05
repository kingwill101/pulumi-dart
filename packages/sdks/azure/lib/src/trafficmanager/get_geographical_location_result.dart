// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGeographicalLocation.
class GetGeographicalLocationResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;

  /// Creates a new [GetGeographicalLocationResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  const GetGeographicalLocationResult({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetGeographicalLocationResult.fromMap(Map<String, dynamic> map) {
    return GetGeographicalLocationResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
