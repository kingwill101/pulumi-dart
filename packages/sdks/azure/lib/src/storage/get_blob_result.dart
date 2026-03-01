// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBlob.
class GetBlobResult {
  /// The access tier of the storage blob.
  final String accessTier;
  /// The MD5 sum of the blob contents.
  final String contentMd5;
  /// The content type of the storage blob.
  final String contentType;
  /// The encryption scope for this blob.
  final String encryptionScope;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A map of custom blob metadata.
  final Map<String, String> metadata;
  final String name;
  final String storageAccountName;
  final String storageContainerName;
  /// The type of the storage blob
  final String type;
  /// The URL of the storage blob.
  final String url;

  /// Creates a new [GetBlobResult].
  /// [accessTier] The access tier of the storage blob.
  /// [contentMd5] The MD5 sum of the blob contents.
  /// [contentType] The content type of the storage blob.
  /// [encryptionScope] The encryption scope for this blob.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] A map of custom blob metadata.
  /// [name] Required.
  /// [storageAccountName] Required.
  /// [storageContainerName] Required.
  /// [type] The type of the storage blob
  /// [url] The URL of the storage blob.
  GetBlobResult({
    required this.accessTier,
    required this.contentMd5,
    required this.contentType,
    required this.encryptionScope,
    required this.id,
    required this.metadata,
    required this.name,
    required this.storageAccountName,
    required this.storageContainerName,
    required this.type,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': accessTier,
      'contentMd5': contentMd5,
      'contentType': contentType,
      'encryptionScope': encryptionScope,
      'id': id,
      'metadata': metadata,
      'name': name,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
      'type': type,
      'url': url,
    };
  }

  factory GetBlobResult.fromMap(Map<String, dynamic> map) {
    return GetBlobResult(
      accessTier: map['accessTier'] as String,
      contentMd5: map['contentMd5'] as String,
      contentType: map['contentType'] as String,
      encryptionScope: map['encryptionScope'] as String,
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageContainerName: map['storageContainerName'] as String,
      type: map['type'] as String,
      url: map['url'] as String,
    );
  }
}

