// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPolicy.
class GetAccessPolicyResult {
  /// the certificate permissions for the access policy
  final List<String> certificatePermissions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// the key permissions for the access policy
  final List<String> keyPermissions;
  final String name;
  /// the secret permissions for the access policy
  final List<String> secretPermissions;

  /// Creates a new [GetAccessPolicyResult].
  /// [certificatePermissions] the certificate permissions for the access policy
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyPermissions] the key permissions for the access policy
  /// [name] Required.
  /// [secretPermissions] the secret permissions for the access policy
  const GetAccessPolicyResult({
    required this.certificatePermissions,
    required this.id,
    required this.keyPermissions,
    required this.name,
    required this.secretPermissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePermissions': certificatePermissions,
      'id': id,
      'keyPermissions': keyPermissions,
      'name': name,
      'secretPermissions': secretPermissions,
    };
  }

  factory GetAccessPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPolicyResult(
      certificatePermissions: (map['certificatePermissions'] as List).cast<String>(),
      id: map['id'] as String,
      keyPermissions: (map['keyPermissions'] as List).cast<String>(),
      name: map['name'] as String,
      secretPermissions: (map['secretPermissions'] as List).cast<String>(),
    );
  }
}
