// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerKey.
class GetServerKeyResult {
  /// Key auto rotation opt-in flag. Either true or false.
  final bool? autoRotationEnabled;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The server key creation date.
  final String? creationDate;
  /// Resource ID.
  final String? id;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  final String? kind;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Subregion of the server key.
  final String? subregion;
  /// Thumbprint of the server key.
  final String? thumbprint;
  /// Resource type.
  final String? type;

  /// Creates a new [GetServerKeyResult].
  /// [autoRotationEnabled] Key auto rotation opt-in flag. Either true or false.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The server key creation date.
  /// [id] Resource ID.
  /// [kind] Kind of encryption protector. This is metadata used for the Azure portal experience.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [subregion] Subregion of the server key.
  /// [thumbprint] Thumbprint of the server key.
  /// [type] Resource type.
  const GetServerKeyResult({
    this.autoRotationEnabled,
    this.azureApiVersion,
    this.creationDate,
    this.id,
    this.kind,
    this.location,
    this.name,
    this.subregion,
    this.thumbprint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': ?autoRotationEnabled,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'subregion': ?subregion,
      'thumbprint': ?thumbprint,
      'type': ?type,
    };
  }

  factory GetServerKeyResult.fromMap(Map<String, dynamic> map) {
    return GetServerKeyResult(
      autoRotationEnabled: (() { final guardedValue = map['autoRotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subregion: (() { final guardedValue = map['subregion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
