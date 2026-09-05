// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBlob.
class GetBlobResult {
  /// The access tier of the storage blob.
  final String? accessTier;
  /// The MD5 sum of the blob contents.
  final String? contentMd5;
  /// The content type of the storage blob.
  final String? contentType;
  /// The encryption scope for this blob.
  final String? encryptionScope;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A map of custom blob metadata.
  final Map<String, String>? metadata;
  final String? name;
  final String? storageAccountName;
  final String? storageContainerId;
  final String? storageContainerName;
  /// The type of the storage blob
  final String? type;
  /// The URL of the storage blob.
  final String? url;

  /// Creates a new [GetBlobResult].
  /// [accessTier] The access tier of the storage blob.
  /// [contentMd5] The MD5 sum of the blob contents.
  /// [contentType] The content type of the storage blob.
  /// [encryptionScope] The encryption scope for this blob.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] A map of custom blob metadata.
  /// [name] Optional.
  /// [storageAccountName] Optional.
  /// [storageContainerId] Optional.
  /// [storageContainerName] Optional.
  /// [type] The type of the storage blob
  /// [url] The URL of the storage blob.
  const GetBlobResult({
    this.accessTier,
    this.contentMd5,
    this.contentType,
    this.encryptionScope,
    this.id,
    this.metadata,
    this.name,
    this.storageAccountName,
    this.storageContainerId,
    this.storageContainerName,
    this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'encryptionScope': ?encryptionScope,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'storageAccountName': ?storageAccountName,
      'storageContainerId': ?storageContainerId,
      'storageContainerName': ?storageContainerName,
      'type': ?type,
      'url': ?url,
    };
  }

  factory GetBlobResult.fromMap(Map<String, dynamic> map) {
    return GetBlobResult(
      accessTier: (() { final guardedValue = map['accessTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentMd5: (() { final guardedValue = map['contentMd5']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionScope: (() { final guardedValue = map['encryptionScope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
