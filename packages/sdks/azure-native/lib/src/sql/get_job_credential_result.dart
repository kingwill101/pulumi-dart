// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getJobCredential.
class GetJobCredentialResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// Resource type.
  final String? type;
  /// The credential user name.
  final String? username;

  /// Creates a new [GetJobCredentialResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [type] Resource type.
  /// [username] The credential user name.
  const GetJobCredentialResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'type': ?type,
      'username': ?username,
    };
  }

  factory GetJobCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetJobCredentialResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
