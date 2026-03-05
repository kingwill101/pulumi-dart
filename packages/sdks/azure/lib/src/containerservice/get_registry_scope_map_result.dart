// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegistryScopeMap.
class GetRegistryScopeMapResult {
  /// The actions for the Scope Map.
  final List<String> actions;
  final String containerRegistryName;
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;

  /// Creates a new [GetRegistryScopeMapResult].
  /// [actions] The actions for the Scope Map.
  /// [containerRegistryName] Required.
  /// [description] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  GetRegistryScopeMapResult({
    required this.actions,
    required this.containerRegistryName,
    required this.description,
    required this.id,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'containerRegistryName': containerRegistryName,
      'description': description,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryScopeMapResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryScopeMapResult(
      actions: (map['actions'] as List).cast<String>(),
      containerRegistryName: map['containerRegistryName'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
