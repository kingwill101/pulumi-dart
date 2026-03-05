// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  final String accountName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String resourceGroupName;
  final Map<String, String> tags;

  /// Creates a new [GetBackupVaultResult].
  /// [accountName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Required.
  GetBackupVaultResult({
    required this.accountName,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      accountName: map['accountName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
