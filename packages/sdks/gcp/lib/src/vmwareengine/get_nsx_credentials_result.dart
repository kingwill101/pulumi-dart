// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNsxCredentials.
class GetNsxCredentialsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parent;
  /// The password of the NSX Credential.
  final String? password;
  /// The username of the NSX Credential.
  final String? username;

  /// Creates a new [GetNsxCredentialsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parent] Optional.
  /// [password] The password of the NSX Credential.
  /// [username] The username of the NSX Credential.
  const GetNsxCredentialsResult({
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

  factory GetNsxCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetNsxCredentialsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
