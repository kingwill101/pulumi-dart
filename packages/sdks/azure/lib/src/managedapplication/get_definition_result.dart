// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefinition.
class GetDefinitionResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String resourceGroupName;

  /// Creates a new [GetDefinitionResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  const GetDefinitionResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetDefinitionResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
