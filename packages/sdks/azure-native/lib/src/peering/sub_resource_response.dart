// ignore_for_file: unused_element, unnecessary_cast


/// The sub resource.
class SubResourceResponse {
  /// The identifier of the referenced resource.
  final String? id;

  /// Creates a new [SubResourceResponse].
  /// [id] The identifier of the referenced resource.
  SubResourceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubResourceResponse.fromMap(Map<String, dynamic> map) {
    return SubResourceResponse(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

