// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCloudforceOneRequestAsset.
class GetCloudforceOneRequestAssetResult {
  /// Identifier.
  final String? accountId;
  /// UUID.
  final String? assetId;
  /// Defines the asset creation time.
  final String? created;
  /// Asset description.
  final String? description;
  /// Asset file type.
  final String? fileType;
  /// UUID.
  final String? id;
  /// Asset name.
  final String? name;
  /// UUID.
  final String? requestId;

  /// Creates a new [GetCloudforceOneRequestAssetResult].
  /// [accountId] Identifier.
  /// [assetId] UUID.
  /// [created] Defines the asset creation time.
  /// [description] Asset description.
  /// [fileType] Asset file type.
  /// [id] UUID.
  /// [name] Asset name.
  /// [requestId] UUID.
  const GetCloudforceOneRequestAssetResult({
    this.accountId,
    this.assetId,
    this.created,
    this.description,
    this.fileType,
    this.id,
    this.name,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'assetId': ?assetId,
      'created': ?created,
      'description': ?description,
      'fileType': ?fileType,
      'id': ?id,
      'name': ?name,
      'requestId': ?requestId,
    };
  }

  factory GetCloudforceOneRequestAssetResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestAssetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetId: (() { final guardedValue = map['assetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
