// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshPublicKey.
class GetSshPublicKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The SSH public key used to authenticate to a virtual machine through ssh.
  final String? publicKey;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetSshPublicKeyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [publicKey] The SSH public key used to authenticate to a virtual machine through ssh.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetSshPublicKeyResult({
    this.id,
    this.name,
    this.publicKey,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'publicKey': ?publicKey,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetSshPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
