// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecureCredential.
class GetSecureCredentialResult {
  final String accountId;

  /// The secure credential's description.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String key;

  /// The time the secure credential was last updated.
  final String lastUpdated;

  /// Creates a new [GetSecureCredentialResult].
  /// [accountId] Required.
  /// [description] The secure credential's description.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [key] Required.
  /// [lastUpdated] The time the secure credential was last updated.
  GetSecureCredentialResult({
    required this.accountId,
    required this.description,
    required this.id,
    required this.key,
    required this.lastUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'description': description,
      'id': id,
      'key': key,
      'lastUpdated': lastUpdated,
    };
  }

  factory GetSecureCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetSecureCredentialResult(
      accountId: map['accountId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      key: map['key'] as String,
      lastUpdated: map['lastUpdated'] as String,
    );
  }
}
