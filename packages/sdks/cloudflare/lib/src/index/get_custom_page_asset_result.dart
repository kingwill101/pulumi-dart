// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomPageAsset.
class GetCustomPageAssetResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final String? assetName;
  /// A short description of the custom asset.
  final String? description;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final String? id;
  final String? lastUpdated;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final String? name;
  /// The size of the asset content in bytes.
  final int? sizeBytes;
  /// The URL where the asset content is fetched from.
  final String? url;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetCustomPageAssetResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [assetName] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [description] A short description of the custom asset.
  /// [id] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [lastUpdated] Optional.
  /// [name] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [sizeBytes] The size of the asset content in bytes.
  /// [url] The URL where the asset content is fetched from.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetCustomPageAssetResult({
    this.accountId,
    this.assetName,
    this.description,
    this.id,
    this.lastUpdated,
    this.name,
    this.sizeBytes,
    this.url,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'assetName': ?assetName,
      'description': ?description,
      'id': ?id,
      'lastUpdated': ?lastUpdated,
      'name': ?name,
      'sizeBytes': ?sizeBytes,
      'url': ?url,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomPageAssetResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPageAssetResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      assetName: (() { final guardedValue = map['assetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdated: (() { final guardedValue = map['lastUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeBytes: (() { final guardedValue = map['sizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
