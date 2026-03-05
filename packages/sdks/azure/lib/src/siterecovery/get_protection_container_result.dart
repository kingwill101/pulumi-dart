// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProtectionContainer.
class GetProtectionContainerResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String recoveryFabricName;
  final String recoveryVaultName;
  final String resourceGroupName;

  /// Creates a new [GetProtectionContainerResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [recoveryFabricName] Required.
  /// [recoveryVaultName] Required.
  /// [resourceGroupName] Required.
  GetProtectionContainerResult({
    required this.id,
    required this.name,
    required this.recoveryFabricName,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'recoveryFabricName': recoveryFabricName,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProtectionContainerResult.fromMap(Map<String, dynamic> map) {
    return GetProtectionContainerResult(
      id: map['id'] as String,
      name: map['name'] as String,
      recoveryFabricName: map['recoveryFabricName'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
