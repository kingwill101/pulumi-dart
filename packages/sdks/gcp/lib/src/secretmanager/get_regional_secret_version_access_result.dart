// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionalSecretVersionAccess.
class GetRegionalSecretVersionAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? isSecretDataBase64;
  final String? location;
  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String? name;
  final String? project;
  final String? secret;
  /// The secret data. No larger than 64KiB.
  final String? secretData;
  final String? version;

  /// Creates a new [GetRegionalSecretVersionAccessResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [location] Optional.
  /// [name] The resource name of the regional SecretVersion. Format:
  /// [project] Optional.
  /// [secret] Optional.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Optional.
  const GetRegionalSecretVersionAccessResult({
    this.id,
    this.isSecretDataBase64,
    this.location,
    this.name,
    this.project,
    this.secret,
    this.secretData,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'secret': ?secret,
      'secretData': ?secretData,
      'version': ?version,
    };
  }

  factory GetRegionalSecretVersionAccessResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionAccessResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretData: (() { final guardedValue = map['secretData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
