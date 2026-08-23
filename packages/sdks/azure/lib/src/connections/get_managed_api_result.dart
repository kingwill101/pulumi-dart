// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedApi.
class GetManagedApiResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final Map<String, String> tags;

  /// Creates a new [GetManagedApiResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [tags] Required.
  const GetManagedApiResult({
    required this.id,
    required this.location,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'tags': tags,
    };
  }

  factory GetManagedApiResult.fromMap(Map<String, dynamic> map) {
    return GetManagedApiResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
