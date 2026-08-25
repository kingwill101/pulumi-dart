// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSecretVersion.
class GetSecretVersionResult {
  /// The time at which the Secret was created.
  final String? createTime;
  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  final String? destroyTime;
  /// True if the current state of the SecretVersion is enabled.
  final bool? enabled;
  final bool? fetchSecretData;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? isSecretDataBase64;
  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  final String? name;
  final String? project;
  final String? secret;
  /// The secret data. No larger than 64KiB.
  final String? secretData;
  final String? version;

  /// Creates a new [GetSecretVersionResult].
  /// [createTime] The time at which the Secret was created.
  /// [destroyTime] The time at which the Secret was destroyed. Only present if state is DESTROYED.
  /// [enabled] True if the current state of the SecretVersion is enabled.
  /// [fetchSecretData] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [name] The resource name of the SecretVersion. Format:
  /// [project] Optional.
  /// [secret] Optional.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Optional.
  const GetSecretVersionResult({
    this.createTime,
    this.destroyTime,
    this.enabled,
    this.fetchSecretData,
    this.id,
    this.isSecretDataBase64,
    this.name,
    this.project,
    this.secret,
    this.secretData,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'destroyTime': ?destroyTime,
      'enabled': ?enabled,
      'fetchSecretData': ?fetchSecretData,
      'id': ?id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'name': ?name,
      'project': ?project,
      'secret': ?secret,
      'secretData': ?secretData,
      'version': ?version,
    };
  }

  factory GetSecretVersionResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destroyTime: (() { final guardedValue = map['destroyTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fetchSecretData: (() { final guardedValue = map['fetchSecretData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isSecretDataBase64: (() { final guardedValue = map['isSecretDataBase64']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secretData: (() { final guardedValue = map['secretData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
