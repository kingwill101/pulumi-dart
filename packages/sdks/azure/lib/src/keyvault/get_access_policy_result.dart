// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// the certificate permissions for the access policy
  final List<String>? certificatePermissions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// the key permissions for the access policy
  final List<String>? keyPermissions;
  final String? name;
  /// the secret permissions for the access policy
  final List<String>? secretPermissions;

  /// Creates a new [GetAccessPolicyResult].
  /// [certificatePermissions] the certificate permissions for the access policy
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyPermissions] the key permissions for the access policy
  /// [name] Optional.
  /// [secretPermissions] the secret permissions for the access policy
  const GetAccessPolicyResult({
    this.certificatePermissions,
    this.id,
    this.keyPermissions,
    this.name,
    this.secretPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePermissions': ?certificatePermissions,
      'id': ?id,
      'keyPermissions': ?keyPermissions,
      'name': ?name,
      'secretPermissions': ?secretPermissions,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      certificatePermissions: (() { final guardedValue = map['certificatePermissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyPermissions: (() { final guardedValue = map['keyPermissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretPermissions: (() { final guardedValue = map['secretPermissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
