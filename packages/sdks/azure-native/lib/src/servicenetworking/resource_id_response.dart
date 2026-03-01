// ignore_for_file: unused_element, unnecessary_cast


/// Resource ID definition used by parent to reference child resources.
class ResourceIdResponse {
  /// Resource ID of child resource.
  final String id;

  /// Creates a new [ResourceIdResponse].
  /// [id] Resource ID of child resource.
  ResourceIdResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdResponse(
      id: map['id'] as String,
    );
  }
}

