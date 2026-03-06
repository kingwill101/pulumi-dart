// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppStorageAccount {
  /// The Access key for the storage account.
  final pulumi.Input<String> accessKey;
  /// The Name of the Storage Account.
  final pulumi.Input<String> accountName;
  /// The path at which to mount the Storage Share.
  final pulumi.Input<String> mountPath;
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// The Name of the File Share or Container Name for Blob storage.
  final pulumi.Input<String> shareName;
  /// The Azure Storage Type.
  final pulumi.Input<String> type;

  /// Creates a new [GetLinuxWebAppStorageAccount].
  /// [accessKey] The Access key for the storage account.
  /// [accountName] The Name of the Storage Account.
  /// [mountPath] The path at which to mount the Storage Share.
  /// [name] The name of this Linux Web App.
  /// [shareName] The Name of the File Share or Container Name for Blob storage.
  /// [type] The Azure Storage Type.
  const GetLinuxWebAppStorageAccount({
    required this.accessKey,
    required this.accountName,
    required this.mountPath,
    required this.name,
    required this.shareName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'accountName': accountName,
      'mountPath': mountPath,
      'name': name,
      'shareName': shareName,
      'type': type,
    };
  }

  factory GetLinuxWebAppStorageAccount.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppStorageAccount(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      mountPath: pulumi.Input.fromValue(map['mountPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

