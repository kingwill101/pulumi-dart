// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppleAppConfig.
class GetAppleAppConfigResult {
  final String? appId;
  /// The content of the XML configuration file as a base64-encoded string.
  final String? configFileContents;
  /// The filename that the configuration artifact for the IosApp is typically saved as.
  final String? configFilename;
  final String? id;
  final String? project;

  /// Creates a new [GetAppleAppConfigResult].
  /// [appId] Optional.
  /// [configFileContents] The content of the XML configuration file as a base64-encoded string.
  /// [configFilename] The filename that the configuration artifact for the IosApp is typically saved as.
  /// [id] Optional.
  /// [project] Optional.
  const GetAppleAppConfigResult({
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

  factory GetAppleAppConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAppleAppConfigResult(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configFileContents: (() { final guardedValue = map['configFileContents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configFilename: (() { final guardedValue = map['configFilename']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
