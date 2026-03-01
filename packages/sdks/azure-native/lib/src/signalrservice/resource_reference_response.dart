// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a resource.
class ResourceReferenceResponse {
  /// Resource ID.
  final String? id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] Resource ID.
  ResourceReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

