// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReference.
class GetReferenceResult {
  /// Optional. A human-readable description of this reference.
  final String? description;
  /// The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  final String? name;
  /// The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  final String? refers;
  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  final String? resourceType;

  /// Creates a new [GetReferenceResult].
  /// [description] Optional. A human-readable description of this reference.
  /// [name] The resource id of this reference. Values must match the regular expression [\w\s\-.]+.
  /// [refers] The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.
  /// [resourceType] The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  const GetReferenceResult({
    this.description,
    this.name,
    this.refers,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'refers': ?refers,
      'resourceType': ?resourceType,
    };
  }

  factory GetReferenceResult.fromMap(Map<String, dynamic> map) {
    return GetReferenceResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refers: (() { final guardedValue = map['refers']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
