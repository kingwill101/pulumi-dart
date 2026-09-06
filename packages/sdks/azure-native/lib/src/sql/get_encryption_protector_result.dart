// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEncryptionProtector.
class GetEncryptionProtectorResult {
  /// Key auto rotation opt-in flag. Either true or false.
  final bool? autoRotationEnabled;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  final String? kind;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// The name of the server key.
  final String? serverKeyName;
  /// The encryption protector type like 'ServiceManaged', 'AzureKeyVault'.
  final String? serverKeyType;
  /// Subregion of the encryption protector.
  final String? subregion;
  /// Thumbprint of the server key.
  final String? thumbprint;
  /// Resource type.
  final String? type;
  /// The URI of the server key.
  final String? uri;

  /// Creates a new [GetEncryptionProtectorResult].
  /// [autoRotationEnabled] Key auto rotation opt-in flag. Either true or false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [kind] Kind of encryption protector. This is metadata used for the Azure portal experience.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [serverKeyName] The name of the server key.
  /// [serverKeyType] The encryption protector type like 'ServiceManaged', 'AzureKeyVault'.
  /// [subregion] Subregion of the encryption protector.
  /// [thumbprint] Thumbprint of the server key.
  /// [type] Resource type.
  /// [uri] The URI of the server key.
  const GetEncryptionProtectorResult({
    this.autoRotationEnabled,
    this.azureApiVersion,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.serverKeyName,
    this.serverKeyType,
    this.subregion,
    this.thumbprint,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'serverKeyName': ?serverKeyName,
      'serverKeyType': ?serverKeyType,
      'subregion': ?subregion,
      'thumbprint': ?thumbprint,
      'type': ?type,
      'uri': ?uri,
    };
  }

  factory GetEncryptionProtectorResult.fromMap(Map<String, dynamic> map) {
    return GetEncryptionProtectorResult(
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverKeyName: (() { final guardedValue = map['serverKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverKeyType: (() { final guardedValue = map['serverKeyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subregion: (() { final guardedValue = map['subregion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
