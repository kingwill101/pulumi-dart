// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecSecret {
  /// Represents the file GID. Defaults to `0`
  final String? fileGid;
  /// Represents represents the FileMode of the file. Defaults to `0o444`
  final int? fileMode;
  /// Represents the final filename in the filesystem
  final String fileName;
  /// Represents the file UID. Defaults to `0`
  final String? fileUid;
  /// ID of the specific secret that we're referencing
  final String secretId;
  /// Name of the secret that this references, but this is just provided for lookup/display purposes. The config in the reference will be identified by its ID
  final String? secretName;

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
      fileGid: map['fileGid'] == null ? null : map['fileGid'] as String,
      fileMode: map['fileMode'] == null ? null : map['fileMode'] as int,
      fileName: map['fileName'] as String,
      fileUid: map['fileUid'] == null ? null : map['fileUid'] as String,
      secretId: map['secretId'] as String,
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

