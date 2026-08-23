// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFabric.
class GetFabricResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the Site Recovery Replication Fabric resides.
  final String location;
  final String name;
  final String recoveryVaultName;
  final String resourceGroupName;

  /// Creates a new [GetFabricResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Site Recovery Replication Fabric resides.
  /// [name] Required.
  /// [recoveryVaultName] Required.
  /// [resourceGroupName] Required.
  const GetFabricResult({
    required this.id,
    required this.location,
    required this.name,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFabricResult.fromMap(Map<String, dynamic> map) {
    return GetFabricResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
