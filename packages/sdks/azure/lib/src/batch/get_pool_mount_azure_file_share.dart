// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPoolMountAzureFileShare {
  /// The Azure Storage Account key.
  final pulumi.Input<String> accountKey;
  /// The Batch Account name associated with the Batch pool.
  final pulumi.Input<String> accountName;
  /// The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  final pulumi.Input<String> azureFileUrl;
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String> mountOptions;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final pulumi.Input<String> relativeMountPath;

  /// Creates a new [GetPoolMountAzureFileShare].
  /// [accountKey] The Azure Storage Account key.
  /// [accountName] The Batch Account name associated with the Batch pool.
  /// [azureFileUrl] The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  const GetPoolMountAzureFileShare({
    required this.accountKey,
    required this.accountName,
    required this.azureFileUrl,
    required this.mountOptions,
    required this.relativeMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'azureFileUrl': azureFileUrl,
      'mountOptions': mountOptions,
      'relativeMountPath': relativeMountPath,
    };
  }

  factory GetPoolMountAzureFileShare.fromMap(Map<String, dynamic> map) {
    return GetPoolMountAzureFileShare(
      accountKey: pulumi.Input.fromValue(map['accountKey'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      azureFileUrl: pulumi.Input.fromValue(map['azureFileUrl'] as String),
      mountOptions: pulumi.Input.fromValue(map['mountOptions'] as String),
      relativeMountPath: pulumi.Input.fromValue(map['relativeMountPath'] as String),
    );
  }
}

