// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAndroidAppConfig.
class GetAndroidAppConfigResult {
  final String? appId;
  final String? configFileContents;
  final String? configFilename;
  final String? id;
  final String? project;

  /// Creates a new [GetAndroidAppConfigResult].
  /// [appId] Optional.
  /// [configFileContents] Optional.
  /// [configFilename] Optional.
  /// [id] Optional.
  /// [project] Optional.
  const GetAndroidAppConfigResult({
    this.appId,
    this.configFileContents,
    this.configFilename,
    this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'configFileContents': ?configFileContents,
      'configFilename': ?configFilename,
      'id': ?id,
      'project': ?project,
    };
  }

  factory GetAndroidAppConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAndroidAppConfigResult(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configFileContents: (() { final guardedValue = map['configFileContents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configFilename: (() { final guardedValue = map['configFilename']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
