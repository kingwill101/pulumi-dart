// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStorageContainer.
class GetStorageContainerResult {
  /// The Access Level configured for this Container.
  final String containerAccessType;
  /// The default encryption scope in use for blobs uploaded to this container.
  final String defaultEncryptionScope;
  /// Whether blobs are allowed to override the default encryption scope for this container.
  final bool encryptionScopeOverrideEnabled;
  /// Is there an Immutability Policy configured on this Storage Container?
  final bool hasImmutabilityPolicy;
  /// Is there a Legal Hold configured on this Storage Container?
  final bool hasLegalHold;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A mapping of MetaData for this Container.
  final Map<String, String> metadata;
  final String name;
  final String resourceManagerId;
  final String? storageAccountId;
  final String? storageAccountName;
  /// The data plane URL of the Storage Container in the format of `&lt;storage blob endpoint&gt;/&lt;container name&gt;`. E.g. `https://example.blob.core.windows.net/mycontainer`.
  final String url;

  /// Creates a new [GetStorageContainerResult].
  /// [containerAccessType] The Access Level configured for this Container.
  /// [defaultEncryptionScope] The default encryption scope in use for blobs uploaded to this container.
  /// [encryptionScopeOverrideEnabled] Whether blobs are allowed to override the default encryption scope for this container.
  /// [hasImmutabilityPolicy] Is there an Immutability Policy configured on this Storage Container?
  /// [hasLegalHold] Is there a Legal Hold configured on this Storage Container?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] A mapping of MetaData for this Container.
  /// [name] Required.
  /// [resourceManagerId] Required.
  /// [storageAccountId] Optional.
  /// [storageAccountName] Optional.
  /// [url] The data plane URL of the Storage Container in the format of `&lt;storage blob endpoint&gt;/&lt;container name&gt;`. E.g. `https://example.blob.core.windows.net/mycontainer`.
  const GetStorageContainerResult({
    required this.containerAccessType,
    required this.defaultEncryptionScope,
    required this.encryptionScopeOverrideEnabled,
    required this.hasImmutabilityPolicy,
    required this.hasLegalHold,
    required this.id,
    required this.metadata,
    required this.name,
    required this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAccessType': containerAccessType,
      'defaultEncryptionScope': defaultEncryptionScope,
      'encryptionScopeOverrideEnabled': encryptionScopeOverrideEnabled,
      'hasImmutabilityPolicy': hasImmutabilityPolicy,
      'hasLegalHold': hasLegalHold,
      'id': id,
      'metadata': metadata,
      'name': name,
      'resourceManagerId': resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
      'url': url,
    };
  }

  factory GetStorageContainerResult.fromMap(Map<String, dynamic> map) {
    return GetStorageContainerResult(
      containerAccessType: map['containerAccessType'] as String,
      defaultEncryptionScope: map['defaultEncryptionScope'] as String,
      encryptionScopeOverrideEnabled: map['encryptionScopeOverrideEnabled'] as bool,
      hasImmutabilityPolicy: map['hasImmutabilityPolicy'] as bool,
      hasLegalHold: map['hasLegalHold'] as bool,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourceManagerId: map['resourceManagerId'] as String,
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: map['url'] as String,
    );
  }
}
