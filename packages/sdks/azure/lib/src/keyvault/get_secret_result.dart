// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecret.
class GetSecretResult {
  /// The content type for the Key Vault Secret.
  final String contentType;
  /// The date and time at which the Key Vault Secret expires and is no longer valid.
  final String expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyVaultId;
  final String name;
  /// The earliest date at which the Key Vault Secret can be used.
  final String notBeforeDate;
  /// The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  final String resourceId;
  /// The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  final String resourceVersionlessId;
  /// Any tags assigned to this resource.
  final Map<String, String> tags;
  /// The value of the Key Vault Secret.
  final String value;
  final String? version;
  /// The Versionless ID of the Key Vault Secret. This can be used to always get latest secret value, and enable fetching automatically rotating secrets.
  final String versionlessId;

  /// Creates a new [GetSecretResult].
  /// [contentType] The content type for the Key Vault Secret.
  /// [expirationDate] The date and time at which the Key Vault Secret expires and is no longer valid.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Required.
  /// [name] Required.
  /// [notBeforeDate] The earliest date at which the Key Vault Secret can be used.
  /// [resourceId] The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  /// [tags] Any tags assigned to this resource.
  /// [value] The value of the Key Vault Secret.
  /// [version] Optional.
  /// [versionlessId] The Versionless ID of the Key Vault Secret. This can be used to always get latest secret value, and enable fetching automatically rotating secrets.
  GetSecretResult({
    required this.contentType,
    required this.expirationDate,
    required this.id,
    required this.keyVaultId,
    required this.name,
    required this.notBeforeDate,
    required this.resourceId,
    required this.resourceVersionlessId,
    required this.tags,
    required this.value,
    this.version,
    required this.versionlessId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': contentType,
      'expirationDate': expirationDate,
      'id': id,
      'keyVaultId': keyVaultId,
      'name': name,
      'notBeforeDate': notBeforeDate,
      'resourceId': resourceId,
      'resourceVersionlessId': resourceVersionlessId,
      'tags': tags,
      'value': value,
      'version': ?version,
      'versionlessId': versionlessId,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      contentType: map['contentType'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      keyVaultId: map['keyVaultId'] as String,
      name: map['name'] as String,
      notBeforeDate: map['notBeforeDate'] as String,
      resourceId: map['resourceId'] as String,
      resourceVersionlessId: map['resourceVersionlessId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      value: map['value'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionlessId: map['versionlessId'] as String,
    );
  }
}

