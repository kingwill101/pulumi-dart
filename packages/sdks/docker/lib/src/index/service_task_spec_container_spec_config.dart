// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecConfig {
  /// ID of the specific config that we're referencing
  final String configId;
  /// Name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  final String? configName;
  /// Represents the file GID. Defaults to `0`.
  final String? fileGid;
  /// Represents represents the FileMode of the file. Defaults to `0o444`.
  final int? fileMode;
  /// Represents the final filename in the filesystem
  final String fileName;
  /// Represents the file UID. Defaults to `0`.
  final String? fileUid;

  /// Creates a new [ServiceTaskSpecContainerSpecConfig].
  /// [configId] ID of the specific config that we're referencing
  /// [configName] Name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  /// [fileGid] Represents the file GID. Defaults to `0`.
  /// [fileMode] Represents represents the FileMode of the file. Defaults to `0o444`.
  /// [fileName] Represents the final filename in the filesystem
  /// [fileUid] Represents the file UID. Defaults to `0`.
  ServiceTaskSpecContainerSpecConfig({
    required this.configId,
    this.configName,
    this.fileGid,
    this.fileMode,
    required this.fileName,
    this.fileUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': configId,
      'configName': ?configName,
      'fileGid': ?fileGid,
      'fileMode': ?fileMode,
      'fileName': fileName,
      'fileUid': ?fileUid,
    };
  }

  factory ServiceTaskSpecContainerSpecConfig.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecConfig(
      configId: map['configId'] as String,
      configName: map['configName'] == null ? null : map['configName'] as String,
      fileGid: map['fileGid'] == null ? null : map['fileGid'] as String,
      fileMode: map['fileMode'] == null ? null : map['fileMode'] as int,
      fileName: map['fileName'] as String,
      fileUid: map['fileUid'] == null ? null : map['fileUid'] as String,
    );
  }
}

