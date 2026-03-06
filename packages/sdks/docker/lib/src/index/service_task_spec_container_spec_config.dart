// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecConfig {
  /// ID of the specific config that we're referencing
  final pulumi.Input<String> configId;
  /// Name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  final pulumi.Input<String>? configName;
  /// Represents the file GID. Defaults to `0`.
  final pulumi.Input<String>? fileGid;
  /// Represents represents the FileMode of the file. Defaults to `0o444`.
  final pulumi.Input<int>? fileMode;
  /// Represents the final filename in the filesystem
  final pulumi.Input<String> fileName;
  /// Represents the file UID. Defaults to `0`.
  final pulumi.Input<String>? fileUid;

  /// Creates a new [ServiceTaskSpecContainerSpecConfig].
  /// [configId] ID of the specific config that we're referencing
  /// [configName] Name of the config that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  /// [fileGid] Represents the file GID. Defaults to `0`.
  /// [fileMode] Represents represents the FileMode of the file. Defaults to `0o444`.
  /// [fileName] Represents the final filename in the filesystem
  /// [fileUid] Represents the file UID. Defaults to `0`.
  const ServiceTaskSpecContainerSpecConfig({
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
      configId: pulumi.Input.fromValue(map['configId'] as String),
      configName: (() { final guardedValue = map['configName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileGid: (() { final guardedValue = map['fileGid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileMode: (() { final guardedValue = map['fileMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      fileName: pulumi.Input.fromValue(map['fileName'] as String),
      fileUid: (() { final guardedValue = map['fileUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

