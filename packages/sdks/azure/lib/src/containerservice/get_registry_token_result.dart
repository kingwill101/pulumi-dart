// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryToken.
class GetRegistryTokenResult {
  final String containerRegistryName;
  /// Whether this Token is enabled.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String resourceGroupName;
  /// The Scope Map ID used by the token.
  final String scopeMapId;

  /// Creates a new [GetRegistryTokenResult].
  /// [containerRegistryName] Required.
  /// [enabled] Whether this Token is enabled.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [scopeMapId] The Scope Map ID used by the token.
  const GetRegistryTokenResult({
    required this.containerRegistryName,
    required this.enabled,
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.scopeMapId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'enabled': enabled,
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scopeMapId': scopeMapId,
    };
  }

  factory GetRegistryTokenResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryTokenResult(
      containerRegistryName: map['containerRegistryName'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeMapId: map['scopeMapId'] as String,
    );
  }
}

