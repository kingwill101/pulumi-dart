// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlacementGroup.
class GetPlacementGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetPlacementGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  const GetPlacementGroupResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetPlacementGroupResult.fromMap(Map<String, dynamic> map) {
    return GetPlacementGroupResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
