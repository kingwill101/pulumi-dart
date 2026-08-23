// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResourceGroup.
class GetResourceGroupResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Resource Group exists.
  final String location;
  final String managedBy;
  final String name;
  /// A mapping of tags assigned to the Resource Group.
  final Map<String, String> tags;

  /// Creates a new [GetResourceGroupResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Resource Group exists.
  /// [managedBy] Required.
  /// [name] Required.
  /// [tags] A mapping of tags assigned to the Resource Group.
  const GetResourceGroupResult({
    required this.id,
    required this.location,
    required this.managedBy,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'managedBy': managedBy,
      'name': name,
      'tags': tags,
    };
  }

  factory GetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupResult(
      id: map['id'] as String,
      location: map['location'] as String,
      managedBy: map['managedBy'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
