// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSshPublicKey.
class GetSshPublicKeyResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The SSH public key used to authenticate to a virtual machine through ssh.
  final String publicKey;
  final String resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetSshPublicKeyResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [publicKey] The SSH public key used to authenticate to a virtual machine through ssh.
  /// [resourceGroupName] Required.
  /// [tags] Optional.
  const GetSshPublicKeyResult({
    required this.id,
    required this.name,
    required this.publicKey,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'publicKey': publicKey,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetSshPublicKeyResult.fromMap(Map<String, dynamic> map) {
    return GetSshPublicKeyResult(
      id: map['id'] as String,
      name: map['name'] as String,
      publicKey: map['publicKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

