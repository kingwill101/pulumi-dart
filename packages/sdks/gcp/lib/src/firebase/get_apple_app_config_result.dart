// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAppleAppConfig.
class GetAppleAppConfigResult {
  final String appId;
  /// The content of the XML configuration file as a base64-encoded string.
  final String configFileContents;
  /// The filename that the configuration artifact for the IosApp is typically saved as.
  final String configFilename;
  final String id;
  final String? project;

  /// Creates a new [GetAppleAppConfigResult].
  /// [appId] Required.
  /// [configFileContents] The content of the XML configuration file as a base64-encoded string.
  /// [configFilename] The filename that the configuration artifact for the IosApp is typically saved as.
  /// [id] Required.
  /// [project] Optional.
  GetAppleAppConfigResult({
    required this.appId,
    required this.configFileContents,
    required this.configFilename,
    required this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'configFileContents': configFileContents,
      'configFilename': configFilename,
      'id': id,
      'project': ?project,
    };
  }

  factory GetAppleAppConfigResult.fromMap(Map<String, dynamic> map) {
    return GetAppleAppConfigResult(
      appId: map['appId'] as String,
      configFileContents: map['configFileContents'] as String,
      configFilename: map['configFilename'] as String,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project']! as String,
    );
  }
}

