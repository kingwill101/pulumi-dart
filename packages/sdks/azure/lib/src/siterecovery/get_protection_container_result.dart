// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProtectionContainer.
class GetProtectionContainerResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? recoveryFabricName;
  final String? recoveryVaultName;
  final String? resourceGroupName;

  /// Creates a new [GetProtectionContainerResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [recoveryFabricName] Optional.
  /// [recoveryVaultName] Optional.
  /// [resourceGroupName] Optional.
  const GetProtectionContainerResult({
    this.id,
    this.name,
    this.recoveryFabricName,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'recoveryFabricName': ?recoveryFabricName,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetProtectionContainerResult.fromMap(Map<String, dynamic> map) {
    return GetProtectionContainerResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryFabricName: (() { final guardedValue = map['recoveryFabricName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
