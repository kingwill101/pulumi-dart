// ignore_for_file: unused_element, unnecessary_cast


/// Deployment dependency information.
class BasicDependencyResponse {
  /// The ID of the dependency.
  final String? id;
  /// The dependency resource name.
  final String? resourceName;
  /// The dependency resource type.
  final String? resourceType;

  /// Creates a new [BasicDependencyResponse].
  /// [id] The ID of the dependency.
  /// [resourceName] The dependency resource name.
  /// [resourceType] The dependency resource type.
  BasicDependencyResponse({
    this.id,
    this.resourceName,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'resourceName': ?resourceName,
      'resourceType': ?resourceType,
    };
  }

  factory BasicDependencyResponse.fromMap(Map<String, dynamic> map) {
    return BasicDependencyResponse(
      id: map['id'] == null ? null : map['id'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

