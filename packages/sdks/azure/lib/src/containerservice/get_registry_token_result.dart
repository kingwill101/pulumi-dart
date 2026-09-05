// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryToken.
class GetRegistryTokenResult {
  final String? containerRegistryName;
  /// Whether this Token is enabled.
  final bool? enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? resourceGroupName;
  /// The Scope Map ID used by the token.
  final String? scopeMapId;

  /// Creates a new [GetRegistryTokenResult].
  /// [containerRegistryName] Optional.
  /// [enabled] Whether this Token is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [scopeMapId] The Scope Map ID used by the token.
  const GetRegistryTokenResult({
    this.containerRegistryName,
    this.enabled,
    this.id,
    this.name,
    this.resourceGroupName,
    this.scopeMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
      'enabled': ?enabled,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopeMapId': ?scopeMapId,
    };
  }

  factory GetRegistryTokenResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryTokenResult(
      containerRegistryName: (() { final guardedValue = map['containerRegistryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scopeMapId: (() { final guardedValue = map['scopeMapId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
