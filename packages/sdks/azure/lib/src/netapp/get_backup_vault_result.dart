// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  final String? accountName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetBackupVaultResult].
  /// [accountName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetBackupVaultResult({
    this.accountName,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
