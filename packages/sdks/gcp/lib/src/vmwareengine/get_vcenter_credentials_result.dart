// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVcenterCredentials.
class GetVcenterCredentialsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parent;
  /// The password of the Vcenter Credential.
  final String? password;
  /// The username of the Vcenter Credential.
  final String? username;

  /// Creates a new [GetVcenterCredentialsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Optional.
  /// [password] The password of the Vcenter Credential.
  /// [username] The username of the Vcenter Credential.
  const GetVcenterCredentialsResult({
    this.id,
    this.parent,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'parent': ?parent,
      'password': ?password,
      'username': ?username,
    };
  }

  factory GetVcenterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetVcenterCredentialsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
