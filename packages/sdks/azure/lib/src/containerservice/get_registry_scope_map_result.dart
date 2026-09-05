// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryScopeMap.
class GetRegistryScopeMapResult {
  /// The actions for the Scope Map.
  final List<String>? actions;
  final String? containerRegistryName;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;

  /// Creates a new [GetRegistryScopeMapResult].
  /// [actions] The actions for the Scope Map.
  /// [containerRegistryName] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  const GetRegistryScopeMapResult({
    this.actions,
    this.containerRegistryName,
    this.description,
    this.id,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'containerRegistryName': ?containerRegistryName,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetRegistryScopeMapResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryScopeMapResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      containerRegistryName: (() { final guardedValue = map['containerRegistryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
