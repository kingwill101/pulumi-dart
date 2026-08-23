// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServerKey.
class GetServerKeyResult {
  /// Key auto rotation opt-in flag. Either true or false.
  final bool autoRotationEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The server key creation date.
  final String creationDate;
  /// Resource ID.
  final String id;
  /// Kind of encryption protector. This is metadata used for the Azure portal experience.
  final String kind;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// Subregion of the server key.
  final String subregion;
  /// Thumbprint of the server key.
  final String thumbprint;
  /// Resource type.
  final String type;

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
    required this.autoRotationEnabled,
    required this.azureApiVersion,
    required this.creationDate,
    required this.id,
    required this.kind,
    required this.location,
    required this.name,
    required this.subregion,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRotationEnabled': autoRotationEnabled,
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'id': id,
      'kind': kind,
      'location': location,
      'name': name,
      'subregion': subregion,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory GetServerKeyResult.fromMap(Map<String, dynamic> map) {
    return GetServerKeyResult(
      autoRotationEnabled: map['autoRotationEnabled'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      subregion: map['subregion'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}
