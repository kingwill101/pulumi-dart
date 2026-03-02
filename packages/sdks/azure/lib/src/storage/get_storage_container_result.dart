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
  GetStorageContainerResult({
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
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId']! as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName']! as String,
    );
  }
}

