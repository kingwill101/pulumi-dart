// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTrafficManager.
class GetTrafficManagerResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;

  /// Creates a new [GetTrafficManagerResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  const GetTrafficManagerResult({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetTrafficManagerResult.fromMap(Map<String, dynamic> map) {
    return GetTrafficManagerResult(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
