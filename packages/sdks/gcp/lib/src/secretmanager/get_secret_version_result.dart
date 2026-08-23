// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecretVersion.
class GetSecretVersionResult {
  /// The time at which the Secret was created.
  final String createTime;
  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  final String destroyTime;
  /// True if the current state of the SecretVersion is enabled.
  final bool enabled;
  final bool? fetchSecretData;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;
  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;
  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  /// Creates a new [GetSecretVersionResult].
  /// [createTime] The time at which the Secret was created.
  /// [destroyTime] The time at which the Secret was destroyed. Only present if state is DESTROYED.
  /// [enabled] True if the current state of the SecretVersion is enabled.
  /// [fetchSecretData] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [name] The resource name of the SecretVersion. Format:
  /// [project] Required.
  /// [secret] Required.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Required.
  const GetSecretVersionResult({
    required this.createTime,
    required this.destroyTime,
    required this.enabled,
    this.fetchSecretData,
    required this.id,
    this.isSecretDataBase64,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'destroyTime': destroyTime,
      'enabled': enabled,
      'fetchSecretData': ?fetchSecretData,
      'id': id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'name': name,
      'project': project,
      'secret': secret,
      'secretData': secretData,
      'version': version,
    };
  }

  factory GetSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult(
      createTime: map['createTime'] as String,
      destroyTime: map['destroyTime'] as String,
      enabled: map['enabled'] as bool,
      fetchSecretData: (() { final guardedValue = map['fetchSecretData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}
