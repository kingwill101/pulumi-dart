// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedApi.
class GetManagedApiResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final Map<String, String>? tags;

  /// Creates a new [GetManagedApiResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [tags] Optional.
  const GetManagedApiResult({
    this.id,
    this.location,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory GetManagedApiResult.fromMap(Map<String, dynamic> map) {
    return GetManagedApiResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
