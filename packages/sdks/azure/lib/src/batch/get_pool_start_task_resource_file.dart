// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolStartTaskResourceFile {
  /// The storage container name in the auto storage account.
  final pulumi.Input<String> autoStorageContainerName;
  /// The blob prefix used when downloading blobs from an Azure Storage container.
  final pulumi.Input<String> blobPrefix;
  /// The file permission mode attribute represented as a string in octal format (e.g. `"0644"`).
  final pulumi.Input<String> fileMode;
  /// The location on the compute node to which to download the file, relative to the task's working directory. If the `http_url` property is specified, the `file_path` is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the `auto_storage_container_name` or `storage_container_url` property is specified.
  final pulumi.Input<String> filePath;
  /// The URL of the file to download. If the URL is Azure Blob Storage, it must be readable using anonymous access.
  final pulumi.Input<String> httpUrl;
  /// The URL of the blob container within Azure Blob Storage.
  final pulumi.Input<String> storageContainerUrl;
  /// The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  final pulumi.Input<String> userAssignedIdentityId;

  /// Creates a new [GetPoolStartTaskResourceFile].
  /// [autoStorageContainerName] The storage container name in the auto storage account.
  /// [blobPrefix] The blob prefix used when downloading blobs from an Azure Storage container.
  /// [fileMode] The file permission mode attribute represented as a string in octal format (e.g. `"0644"`).
  /// [filePath] The location on the compute node to which to download the file, relative to the task's working directory. If the `http_url` property is specified, the `file_path` is required and describes the path which the file will be downloaded to, including the filename. Otherwise, if the `auto_storage_container_name` or `storage_container_url` property is specified.
  /// [httpUrl] The URL of the file to download. If the URL is Azure Blob Storage, it must be readable using anonymous access.
  /// [storageContainerUrl] The URL of the blob container within Azure Blob Storage.
  /// [userAssignedIdentityId] The reference to the user assigned identity to use to access an Azure Container Registry instead of username and password.
  GetPoolStartTaskResourceFile({
    required this.autoStorageContainerName,
    required this.blobPrefix,
    required this.fileMode,
    required this.filePath,
    required this.httpUrl,
    required this.storageContainerUrl,
    required this.userAssignedIdentityId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoStorageContainerName': autoStorageContainerName,
      'blobPrefix': blobPrefix,
      'fileMode': fileMode,
      'filePath': filePath,
      'httpUrl': httpUrl,
      'storageContainerUrl': storageContainerUrl,
      'userAssignedIdentityId': userAssignedIdentityId,
    };
  }

  factory GetPoolStartTaskResourceFile.fromMap(Map<String, dynamic> map) {
    return GetPoolStartTaskResourceFile(
      autoStorageContainerName: (map['autoStorageContainerName'] as String).input(),
      blobPrefix: (map['blobPrefix'] as String).input(),
      fileMode: (map['fileMode'] as String).input(),
      filePath: (map['filePath'] as String).input(),
      httpUrl: (map['httpUrl'] as String).input(),
      storageContainerUrl: (map['storageContainerUrl'] as String).input(),
      userAssignedIdentityId: (map['userAssignedIdentityId'] as String).input(),
    );
  }
}

