// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegionalSecretVersionAccess.
class GetRegionalSecretVersionAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;
  final String location;
  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;
  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  /// Creates a new [GetRegionalSecretVersionAccessResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [location] Required.
  /// [name] The resource name of the regional SecretVersion. Format:
  /// [project] Required.
  /// [secret] Required.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Required.
  const GetRegionalSecretVersionAccessResult({
    required this.id,
    this.isSecretDataBase64,
    required this.location,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'location': location,
      'name': name,
      'project': project,
      'secret': secret,
      'secretData': secretData,
      'version': version,
    };
  }

  factory GetRegionalSecretVersionAccessResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretVersionAccessResult(
      id: map['id'] as String,
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}

