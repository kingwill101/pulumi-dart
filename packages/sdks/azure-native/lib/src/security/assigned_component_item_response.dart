// ignore_for_file: unused_element, unnecessary_cast


/// describe the properties of a security assessment object reference (by key)
class AssignedComponentItemResponse {
  /// unique key to a security assessment object
  final String? key;

  /// Creates a new [AssignedComponentItemResponse].
  /// [key] unique key to a security assessment object
  AssignedComponentItemResponse({
    this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
    };
  }

  factory AssignedComponentItemResponse.fromMap(Map<String, dynamic> map) {
    return AssignedComponentItemResponse(
      key: map['key'] == null ? null : map['key'] as String,
    );
  }
}

