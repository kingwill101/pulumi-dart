// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecret.
class GetSecretResult {
  /// The content type for the Key Vault Secret.
  final String? contentType;
  /// The date and time at which the Key Vault Secret expires and is no longer valid.
  final String? expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? keyVaultId;
  final String? name;
  /// The earliest date at which the Key Vault Secret can be used.
  final String? notBeforeDate;
  /// The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  final String? resourceId;
  /// The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  final String? resourceVersionlessId;
  /// Any tags assigned to this resource.
  final Map<String, String>? tags;
  /// The value of the Key Vault Secret.
  final String? value;
  final String? version;
  /// The Versionless ID of the Key Vault Secret. This can be used to always get latest secret value, and enable fetching automatically rotating secrets.
  final String? versionlessId;

  /// Creates a new [GetSecretResult].
  /// [contentType] The content type for the Key Vault Secret.
  /// [expirationDate] The date and time at which the Key Vault Secret expires and is no longer valid.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyVaultId] Optional.
  /// [name] Optional.
  /// [notBeforeDate] The earliest date at which the Key Vault Secret can be used.
  /// [resourceId] The (Versioned) ID for this Key Vault Secret. This property points to a specific version of a Key Vault Secret, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Secret. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Secret is updated.
  /// [tags] Any tags assigned to this resource.
  /// [value] The value of the Key Vault Secret.
  /// [version] Optional.
  /// [versionlessId] The Versionless ID of the Key Vault Secret. This can be used to always get latest secret value, and enable fetching automatically rotating secrets.
  const GetSecretResult({
    this.contentType,
    this.expirationDate,
    this.id,
    this.keyVaultId,
    this.name,
    this.notBeforeDate,
    this.resourceId,
    this.resourceVersionlessId,
    this.tags,
    this.value,
    this.version,
    this.versionlessId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'resourceId': ?resourceId,
      'resourceVersionlessId': ?resourceVersionlessId,
      'tags': ?tags,
      'value': ?value,
      'version': ?version,
      'versionlessId': ?versionlessId,
    };
  }

  factory GetSecretResult.fromMap(Map<String, dynamic> map) {
    return GetSecretResult(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBeforeDate: (() { final guardedValue = map['notBeforeDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceVersionlessId: (() { final guardedValue = map['resourceVersionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionlessId: (() { final guardedValue = map['versionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
