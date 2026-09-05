// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFabric.
class GetFabricResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the Site Recovery Replication Fabric resides.
  final String? location;
  final String? name;
  final String? recoveryVaultName;
  final String? resourceGroupName;

  /// Creates a new [GetFabricResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Site Recovery Replication Fabric resides.
  /// [name] Optional.
  /// [recoveryVaultName] Optional.
  /// [resourceGroupName] Optional.
  const GetFabricResult({
    this.id,
    this.location,
    this.name,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetFabricResult.fromMap(Map<String, dynamic> map) {
    return GetFabricResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
