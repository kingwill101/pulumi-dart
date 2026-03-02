// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecSecret {
  /// Represents the file GID. Defaults to `0`
  final pulumi.Input<String>? fileGid;
  /// Represents represents the FileMode of the file. Defaults to `0o444`
  final pulumi.Input<int>? fileMode;
  /// Represents the final filename in the filesystem
  final pulumi.Input<String> fileName;
  /// Represents the file UID. Defaults to `0`
  final pulumi.Input<String>? fileUid;
  /// ID of the specific secret that we're referencing
  final pulumi.Input<String> secretId;
  /// Name of the secret that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  final pulumi.Input<String>? secretName;

  /// Creates a new [ServiceTaskSpecContainerSpecSecret].
  /// [fileGid] Represents the file GID. Defaults to `0`
  /// [fileMode] Represents represents the FileMode of the file. Defaults to `0o444`
  /// [fileName] Represents the final filename in the filesystem
  /// [fileUid] Represents the file UID. Defaults to `0`
  /// [secretId] ID of the specific secret that we're referencing
  /// [secretName] Name of the secret that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  ServiceTaskSpecContainerSpecSecret({
    this.fileGid,
    this.fileMode,
    required this.fileName,
    this.fileUid,
    required this.secretId,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileGid': ?fileGid,
      'fileMode': ?fileMode,
      'fileName': fileName,
      'fileUid': ?fileUid,
      'secretId': secretId,
      'secretName': ?secretName,
    };
  }

  factory ServiceTaskSpecContainerSpecSecret.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecSecret(
      fileGid: map['fileGid'] == null ? null : (map['fileGid'] as String).input(),
      fileMode: map['fileMode'] == null ? null : (map['fileMode'] as int).input(),
      fileName: (map['fileName'] as String).input(),
      fileUid: map['fileUid'] == null ? null : (map['fileUid'] as String).input(),
      secretId: (map['secretId'] as String).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
    );
  }
}

