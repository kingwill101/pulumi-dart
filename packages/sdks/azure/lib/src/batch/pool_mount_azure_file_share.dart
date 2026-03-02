// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolMountAzureFileShare {
  /// The Azure Storage Account key.
  final pulumi.Input<String> accountKey;
  /// The Azure Storage Account name.
  final pulumi.Input<String> accountName;
  /// The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  final pulumi.Input<String> azureFileUrl;
  /// Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  final pulumi.Input<String>? mountOptions;
  /// The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  final pulumi.Input<String> relativeMountPath;

  /// Creates a new [PoolMountAzureFileShare].
  /// [accountKey] The Azure Storage Account key.
  /// [accountName] The Azure Storage Account name.
  /// [azureFileUrl] The Azure Files URL. This is of the form 'https://{account}.file.core.windows.net/'.
  /// [mountOptions] Additional command line options to pass to the mount command. These are 'net use' options in Windows and 'mount' options in Linux.
  /// [relativeMountPath] The relative path on compute node where the file system will be mounted All file systems are mounted relative to the Batch mounts directory, accessible via the `AZ_BATCH_NODE_MOUNTS_DIR` environment variable.
  PoolMountAzureFileShare({
    required this.accountKey,
    required this.accountName,
    required this.azureFileUrl,
    this.mountOptions,
    required this.relativeMountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'accountName': accountName,
      'azureFileUrl': azureFileUrl,
      'mountOptions': ?mountOptions,
      'relativeMountPath': relativeMountPath,
    };
  }

  factory PoolMountAzureFileShare.fromMap(Map<String, dynamic> map) {
    return PoolMountAzureFileShare(
      accountKey: (map['accountKey'] as String).input(),
      accountName: (map['accountName'] as String).input(),
      azureFileUrl: (map['azureFileUrl'] as String).input(),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions']! as String).input(),
      relativeMountPath: (map['relativeMountPath'] as String).input(),
    );
  }
}

