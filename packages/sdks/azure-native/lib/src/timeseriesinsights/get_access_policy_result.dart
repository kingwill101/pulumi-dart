// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An description of the access policy.
  final String? description;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// The objectId of the principal in Azure Active Directory.
  final String? principalObjectId;
  /// The list of roles the principal is assigned on the environment.
  final List<String>? roles;
  /// Resource type
  final String? type;

  /// Creates a new [GetAccessPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] An description of the access policy.
  /// [id] Resource Id
  /// [name] Resource name
  /// [principalObjectId] The objectId of the principal in Azure Active Directory.
  /// [roles] The list of roles the principal is assigned on the environment.
  /// [type] Resource type
  const GetAccessPolicyResult({
    this.azureApiVersion,
    this.description,
    this.id,
    this.name,
    this.principalObjectId,
    this.roles,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'principalObjectId': ?principalObjectId,
      'roles': ?roles,
      'type': ?type,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalObjectId: (() { final guardedValue = map['principalObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
