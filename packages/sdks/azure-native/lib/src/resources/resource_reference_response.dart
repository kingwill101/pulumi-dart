// ignore_for_file: unused_element, unnecessary_cast


/// The resourceId model.
class ResourceReferenceResponse {
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final String id;

  /// Creates a new [ResourceReferenceResponse].
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  ResourceReferenceResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceResponse(
      id: map['id'] as String,
    );
  }
}

